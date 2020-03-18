//
//  ActivityController+HealthKit.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 18/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import HealthKit

extension ActivityController {
    
    func authorizeHealthKit(completion: ((_ success: Bool) -> Void)?) {
        let writableTypes: Set<HKSampleType> =
            [HKObjectType.workoutType(),
             HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!,
             HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!,
             HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!,
             HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!,
             HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.vo2Max)!,
             HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRateVariabilitySDNN)!]
        let readableTypes: Set<HKSampleType> =
            [HKWorkoutType.workoutType(),
             HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!,
             HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!,
             HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!]
        
        guard HKHealthStore.isHealthDataAvailable() else {
            completion?(false)
            return
        }
        
        // Request Authorization
        healthStore.requestAuthorization(toShare: writableTypes, read: readableTypes) { (success, error) in
            
            if success {
                completion?(true)
            } else {
                completion?(false)
                print("error authorizating HealthStore. \(error?.localizedDescription)")
            }
        }
    }
    
    // MARK: Data Queries
    
    func startAccumulatingData(startDate: Date) {
        startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)
        startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier.stepCount)
        startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier.heartRate)
        startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)
        startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier.vo2Max)
        startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier.heartRateVariabilitySDNN)
        
//        startTimer()
    }
    
    func startQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier) {
        let datePredicate = HKQuery.predicateForSamples(withStart: workoutStartDate, end: nil, options: .strictStartDate)
        let devicePredicate = HKQuery.predicateForObjects(from: [HKDevice.local()])
        let queryPredicate = NSCompoundPredicate(andPredicateWithSubpredicates:[datePredicate, devicePredicate])
        
        let updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void) = { query, samples, deletedObjects, queryAnchor, error in
            self.process(samples: samples, quantityTypeIdentifier: quantityTypeIdentifier)
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
    
    func process(samples: [HKSample]?, quantityTypeIdentifier: HKQuantityTypeIdentifier) {
        DispatchQueue.main.async { [weak self] in
            guard let strongSelf = self, !strongSelf.isPaused else { return }
            
            if let quantitySamples = samples as? [HKQuantitySample] {
                for sample in quantitySamples {
                    if quantityTypeIdentifier == HKQuantityTypeIdentifier.distanceWalkingRunning {
                        let newMeters = sample.quantity.doubleValue(for: strongSelf.distanceUnit)
                        strongSelf.setTotalMeters(meters: strongSelf.totalMeters() + newMeters)
                    } else if quantityTypeIdentifier == HKQuantityTypeIdentifier.stepCount {
                        let newSteps = sample.quantity.doubleValue(for: HKUnit.count())
                        strongSelf.setTotalSteps(steps: strongSelf.totalStepsCount() + newSteps)
                    } else if quantityTypeIdentifier == HKQuantityTypeIdentifier.heartRate {
                        let newBeats = sample.quantity.doubleValue(for: strongSelf.heartRateUnit)
                        strongSelf.setNewHearRateBeats(newBeats: newBeats)
                    } else if quantityTypeIdentifier == HKQuantityTypeIdentifier.activeEnergyBurned {
                        let newActiveEnergyBurned = sample.quantity.doubleValue(for: strongSelf.activeEnergyBurnedUnit)
                        strongSelf.setTotalActiveEnergyBurned(newEnergy: strongSelf.totalActiveEnergyBurnedValue() + newActiveEnergyBurned)
                    } else if quantityTypeIdentifier == HKQuantityTypeIdentifier.vo2Max {
                        let newVO2MaxValue = sample.quantity.doubleValue(for: strongSelf.vo2MaxUnit)
                        strongSelf.setNewVO2MaxValue(newValue: newVO2MaxValue)
                    } else if quantityTypeIdentifier == HKQuantityTypeIdentifier.heartRateVariabilitySDNN {
                        let newheartRateVariabilityValue = sample.quantity.doubleValue(for: strongSelf.heartRateVariabilityUnit)
                        strongSelf.setNewHeartRateVariabilityValue(newValue: newheartRateVariabilityValue)
                    }
                }
                
                DispatchQueue.main.async {
                    strongSelf.updateLabels()
                }
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timerLabel.stop()
    }
    
    func stopAccumulatingData() {
        for query in activeDataQueries {
            healthStore.stop(query)
        }
        
        activeDataQueries.removeAll()
        DispatchQueue.main.async {
            self.stopTimer()
        }
    }
    
    func pauseAccumulatingData() {
        DispatchQueue.main.sync {
            isPaused = true
            ActivitySharedDate.isPaused = true
            timerLabel.stop()
        }
    }
    
    func resumeAccumulatingData() {
        DispatchQueue.main.sync {
            isPaused = false
            ActivitySharedDate.isPaused = false
            timerLabel.setDate(Date(timeIntervalSinceNow: TimeInterval(-self.currentTime)))
            timerLabel.start()
        }
    }
    
}
