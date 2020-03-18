//
//  HealthKitManager.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 14/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import HealthKit

protocol HealthKitManagerDelegate {
    func healthKitManager(_ manager: HealthKitManager, didAuthorizeAccess success: Bool, withError error: Error?)
    func healthKitManager(_ manager: HealthKitManager, didRecieveSamples samples: [HKSample], forQuantityTypeIdentifier id: HKQuantityTypeIdentifier)
}

class HealthKitManager {
    
    static let shared = HealthKitManager()
    let healthStore = HKHealthStore()
    
    var delegate: HealthKitManagerDelegate?
    
    private var observerQuery: HKQuery?
    private var activeDataQueries: [HKQuery] = []
    
    private init() { }
    
    func authorizeHealthKit() {
        if HKHealthStore.isHealthDataAvailable() {
            let infoToRead = Set([
                HKSampleType.characteristicType(forIdentifier: .biologicalSex)!,
                HKSampleType.characteristicType(forIdentifier: .dateOfBirth)!,
                HKSampleType.quantityType(forIdentifier: .activeEnergyBurned)!,
                HKSampleType.quantityType(forIdentifier: .distanceWalkingRunning)!,
                HKSampleType.quantityType(forIdentifier: .heartRate)!,
                HKSampleType.workoutType()
                ])
            let infoToWrite = Set([
                HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
                HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
                HKObjectType.quantityType(forIdentifier: .heartRate)!,
                HKObjectType.workoutType()
                ])
            
            
            
            healthStore.requestAuthorization(toShare: infoToWrite,
                                             read: infoToRead,
                                             completion: { (success, error) in
                                                self.delegate?.healthKitManager(self,
                                                                                didAuthorizeAccess: success,
                                                                                withError: error)
                                                
            })
        }
    }
    
    func sendVo2HRVQueriesIfPossible() {
        if PersistentContainer.shared.backgroundDataUpload.isTimeForVO2Upload {
            sendHealthDataQueries(ofType: .vo2Max) { (success) in
                if success {
                    PersistentContainer.shared.backgroundDataUpload.setLatestUploadVO2JustNow()
                }
            }
        }
        
        if PersistentContainer.shared.backgroundDataUpload.isTimeForHRVUpload {
            sendHealthDataQueries(ofType: .heartRateVariabilitySDNN) { (success) in
                if success {
                    PersistentContainer.shared.backgroundDataUpload.setLatestUploadHRVJustNow()
                }
            }
        }
    }
    
    func sendHealthDataQueries(ofType type: HKQuantityTypeIdentifier, completion: @escaping (Bool)->Void) {
        guard type == .vo2Max || type == .heartRateVariabilitySDNN else { return }
        
        let latestQueryDate: Date = (type == .vo2Max ?
            PersistentContainer.shared.backgroundDataUpload.latestUploadVO2Date :
            PersistentContainer.shared.backgroundDataUpload.latestUploadHRVDate) ?? .distantPast
        let queryDate = Date()
        let healthStore = HKHealthStore()
        
        guard let quantityType = HKSampleType.quantityType(forIdentifier: type) else {
            print("vo2Max Sample Type is no longer available in HealthKit")
            return
        }

        //1. Use HKQuery to load the most recent samples.
        let mostRecentPredicate = HKQuery.predicateForSamples(withStart: latestQueryDate,
                                                              end: queryDate,
                                                              options: .strictEndDate)
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)
        
        var unit: HKUnit!
        switch type {
        case .vo2Max:
            unit = HKUnit(from: "ml/kg*min")
        case .heartRateVariabilitySDNN:
            unit = HKUnit.secondUnit(with: .milli)
        default:
            return
        }

        //let limit = 1
        let sampleQuery = HKSampleQuery(sampleType: quantityType,
                                                    predicate: mostRecentPredicate,
                                                    limit: HKObjectQueryNoLimit,
                                                    sortDescriptors:
        [sortDescriptor]) { (query, samples, error) in
            guard let samples = samples else { return }
            let data = samples.map { (sample) -> (Double, Date)? in
                guard let quantitySample = sample as? HKQuantitySample else { return nil }
                return (quantitySample.quantity.doubleValue(for: unit), quantitySample.endDate)
            }.compactMap({ $0 })
            switch type {
            case .vo2Max:
                NetworkService.postVO2Max(data) { (success) in
                    completion(success)
                }
            case .heartRateVariabilitySDNN:
                NetworkService.postHeartRateVariabilities(data) { (success) in
                    completion(success)
                }
            default:
                return
            }
        }
        healthStore.execute(sampleQuery)
    }
    
    
    func observerHeartRateSamples() {
        let heartRateSampleType = HKObjectType.quantityType(forIdentifier: .heartRate)
        
        if let observerQuery = observerQuery {
            healthStore.stop(observerQuery)
        }
        
        observerQuery = HKObserverQuery(sampleType: heartRateSampleType!, predicate: nil) { (_, _, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            self.fetchLatestHeartRateSample { (sample) in
                guard let sample = sample else {
                    return
                }
                
                DispatchQueue.main.async {
                    let heartRate = sample.quantity.doubleValue(for: HKUnit.count().unitDivided(by: HKUnit.minute()))
                    print("Heart Rate Sample: \(heartRate)")
//                    self.updateHeartRate(heartRateValue: heartRate)
                }
            }
        }
        
        guard observerQuery != nil else { return }
        healthStore.execute(observerQuery!)
    }
    
    func fetchLatestHeartRateSample(completionHandler: @escaping (_ sample: HKQuantitySample?) -> Void) {
        guard let sampleType = HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate) else {
            completionHandler(nil)
            return
        }
        
        let predicate = HKQuery.predicateForSamples(withStart: Date.distantPast, end: Date(), options: .strictEndDate)
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)
        let query = HKSampleQuery(sampleType: sampleType,
                                  predicate: predicate,
                                  limit: Int(HKObjectQueryNoLimit),
                                  sortDescriptors: [sortDescriptor]) { (_, results, error) in
                                    if let error = error {
                                        print("Error: \(error.localizedDescription)")
                                        return
                                    }
                                    
                                    completionHandler(results?[0] as? HKQuantitySample)
        }
        
        healthStore.execute(query)
    }
    
    func startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier) {
        let datePredicate = HKQuery.predicateForSamples(withStart: Date(), end: nil, options: .strictStartDate)
        let devicePredicate = HKQuery.predicateForObjects(from: [HKDevice.local()])
        let queryPredicate = NSCompoundPredicate(andPredicateWithSubpredicates:[datePredicate, devicePredicate])
        
        let updateHandler: ((HKAnchoredObjectQuery, [HKSample]?,
            [HKDeletedObject]?,
            HKQueryAnchor?,
            Error?) -> Void) = { query, samples, deletedObjects, queryAnchor, error in
                if let samples = samples {
                    self.delegate?.healthKitManager(self, didRecieveSamples: samples, forQuantityTypeIdentifier: quantityTypeIdentifier)
                }
        }
        
        let query = HKAnchoredObjectQuery(type: HKObjectType.quantityType(forIdentifier: quantityTypeIdentifier)!,
                                          predicate: queryPredicate,
                                          anchor: nil,
                                          limit: HKObjectQueryNoLimit,
                                          resultsHandler: updateHandler)
        query.updateHandler = updateHandler
        healthStore.execute(query)
        
        activeDataQueries.append(query)
    }
    
}
