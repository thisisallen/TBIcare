//
//  CarePlan.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 04/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import CareKit
import Alamofire
import SwiftyJSON
import AWSAppSync

extension NetworkService {
    
    static func currentUserActivities(completion: @escaping (([Activity], Error?)->Void)) {
        
        let url = URL(string: activitiesUrl)!
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
            switch response.result {
            case .failure(let error):
                completion([], error)
            case .success(let value):
                let json = JSON(value)
                var activities: [Activity] = []
                for activityJson in json.arrayValue {
                    if let activity = Activity(dictionary: activityJson.dictionaryObject ?? [:]) {
                        activities.append(activity)
                    }
                }
                completion(activities, nil)
            }
        }
        
        
    }
    
    static func updateEvent(_ event: OCKCarePlanEvent,
                            _ attempt: Attempt,
                            forActivity ockActivity: OCKCarePlanActivity,
                            withState state: OCKCarePlanEventState,
                            maxHeartRate: Double,
                            completion: @escaping ((Bool, Error?)->Void)) {
        var appSyncClient: AWSAppSyncClient?
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
//        let url = URL(string: eventsUrl)!
//
//        let parameters: [String: Any] = [
//            "activity_id": "\(ockActivity.identifier)",
//            "number_of_days_since_start": "\(event.numberOfDaysSinceStart)",
//            "occurrence_index_of_day": "\(event.occurrenceIndexOfDay)",
//            "state": "\(state.rawValue)"
//        ]
        
        //get recorded_at time
        let heartArray = attempt.heartRates.toAPIDictionaryArray
        var recorded_atValue = String()
        for recorded in heartArray{
            //get key of recorded_at
            let recorded_at = recorded.index(forKey: "recorded_at")
            recorded_atValue = recorded[recorded_at!].value as! String
        }
       
        let eventInput = EventInput(createdAt: recorded_atValue, numberOfDaysSinceStart: Int(event.numberOfDaysSinceStart), occurrenceIndexofDay: Int(event.occurrenceIndexOfDay), state: Int(state.rawValue))
        
        
        let mutationInput = UpdateTBIcareInput(id:"adca6709-de62-4150-8e7a-f79c8fc47ade", event: eventInput)
        appSyncClient?.perform(mutation: UpdateTbIcareMutation(input: mutationInput)) { (result, error) in
            //self.runQuery()
            print(mutationInput)
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
            print("Update complete.")
        }
        
//        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
//            switch response.result {
//            case .failure(let err):
//                completion(false, err)
//            case .success(_):
//                completion(true, nil)
//            }
//        }
        
    }
    
   
    
    static func createAttempt(_ attempt: Attempt,
                              forActivity activity: OCKCarePlanActivity,
                              withNumberOfDaysSinceStart days: UInt,
                              andOccurrenceIndexOfDay occurrence: UInt,
                              completion: @escaping ((Bool, _ attemptId: String?, Error?)->Void)) {
        //define AppSyncClient
        var appSyncClient: AWSAppSyncClient?
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
          //Ahmad's Code
//        let url = URL(string: attemptsUrl)!
//
//        let parameters: [String: Any] = [
//            "activity_id": activity.identifier,
//            "number_of_days_since_start": days,
//            "occurrence_index_of_day": occurrence,
//            "time": attempt.time,
//            "heart_rates": attempt.heartRates.toAPIDictionaryArray,
//            "steps": attempt.steps ?? 0,
//            "distance": attempt.distance ?? 0.0,
//            "active_energy_burned": "\(attempt.activeBurnedEnergy ?? 0.0)"
//        ]
        
        // get numberOfDaysSinceStart occurrenceIndexofDay state and then update everything
        var numberOfDaysSinceStartValue = Int()
        var occurrenceIndexofDayValue = Int()
        var stateValue = Int()
        var attemptInputValue = [AttemptInput]()
        
        
        //get data from database
        appSyncClient?.fetch(query: GetTbIcareQuery(id: "adca6709-de62-4150-8e7a-f79c8fc47ade"), cachePolicy: .fetchIgnoringCacheData) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            print("Query complete.")
            numberOfDaysSinceStartValue =  (result?.data?.getTbIcare?.event?.numberOfDaysSinceStart)!
            occurrenceIndexofDayValue = (result?.data?.getTbIcare?.event?.occurrenceIndexofDay)!
            stateValue = (result?.data?.getTbIcare?.event?.state)!
            let attemptValue = (result?.data?.getTbIcare?.event?.attempt)!
            
            for value in attemptValue{
                
                let activeEnergyBurned = value?.activeEnergyBurned
                let distance = value?.distance
                let heartRateCreateAt = value?.heartRate?.createdAt
                let heartRateRecordAt = value?.heartRate?.recordedAt
                let heartRateValue = value?.heartRate?.heartRateValue
                let steps = value?.steps
                let time  =  value?.time
                
                let heartRateInput  = HeartRateInput(createdAt: heartRateCreateAt, heartRateValue: heartRateValue, recordedAt: heartRateRecordAt)
                let oldAttempt = AttemptInput(activeEnergyBurned: activeEnergyBurned,  distance: distance, steps: steps, time: time, heartRate: heartRateInput)
                attemptInputValue.append(oldAttempt)
               
            }
            
            
            // get new heart rate
            let heartArray = attempt.heartRates.toAPIDictionaryArray
            var heartRateValue = [Double]()
            var recorded_atValue = String()
            for heartrate in heartArray{
                let value = heartrate.index(forKey: "value")
                let recorded_at = heartrate.index(forKey: "recorded_at")
                heartRateValue.append(heartrate[value!].value as! Double)
                recorded_atValue = heartrate[recorded_at!].value as! String
            }
            
            //upload data to dynamoDB
            let heartrateInput = HeartRateInput(createdAt: recorded_atValue, heartRateValue: heartRateValue, recordedAt: recorded_atValue)
            
            
            let attemptInput = AttemptInput(activeEnergyBurned:Int(attempt.activeBurnedEnergy ?? 0.0),  distance: Int(attempt.distance ?? 0.0), heartRateCount: nil,  steps: attempt.steps, time:Int(attempt.time),  heartRate: heartrateInput)
            
            //add new data to old data list
            attemptInputValue.append(attemptInput)
            
            let eventInput = EventInput(createdAt: recorded_atValue, numberOfDaysSinceStart: numberOfDaysSinceStartValue, occurrenceIndexofDay: occurrenceIndexofDayValue, state: stateValue, attempt: attemptInputValue)
            
            let mutationInput = UpdateTBIcareInput(id:"adca6709-de62-4150-8e7a-f79c8fc47ade", event: eventInput)
            
            // update event
            appSyncClient?.perform(mutation: UpdateTbIcareMutation(input: mutationInput)) { (result, error) in
                //self.runQuery()
                print(mutationInput)
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }
                if let resultError = result?.errors {
                    print("Error saving the item on server: \(resultError)")
                    return
                }
                print("Update complete.")
            }
            
        }
        
    
        
        //Ahamad's Code
//        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
//            switch response.result {
//            case .failure(let err):
//                if let data = response.data {
//                    RootViewController.alert(title: "Error saving attempt inside call", message: String(data: data, encoding: .utf8) ?? "No data available")
//                }
//                completion(false, nil, err)
//            case .success(let value):
//                let json = JSON(value)
//                completion(true, json["data"]["id"].stringValue, nil)
//            }
//        }
        
    }
    
    static func recordPainAssessment(_ assessment: Int,
                                     forAttempWithId id: String,
                                     completion: @escaping ((Bool, Error?)->Void)) {
        
        
        let url = URL(string: painAssessmentUrl)!
        
        let parameters: [String: Any] = [
            "attempt_id": id,
            "assessment": assessment
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
            switch response.result {
            case .failure(let err):
                completion(false, err)
            case .success(let value):
                let json = JSON(value)
                completion(true, nil)
            }
        }
               
    }
    
    static func recordWorkoutAssessment(_ assessment: Int,
                                     forAttempWithId id: String,
                                     completion: @escaping ((Bool, Error?)->Void)) {
        
        
        let url = URL(string: painAssessmentUrl)!
        
        let parameters: [String: Any] = [
            "attempt_id": id,
            "workout_assessment": assessment
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
            switch response.result {
            case .failure(let err):
                completion(false, err)
            case .success(let value):
                let json = JSON(value)
                completion(true, nil)
            }
        }
               
    }
    
    static func postVO2Max(_ data: [(Double, Date)], completion: @escaping ((Bool)->Void)) {
        
        let url = URL(string: vo2MaxUrl)!
        
        var dataDict: [[String: Any]] = []
        data.forEach { (tuple) in
            dataDict.append([
                "value": tuple.0,
                "recorded_at": tuple.1.toAPIString
            ])
        }
        
        let parameters: [String: Any] = [
            "vo2_max": dataDict
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
            switch response.result {
            case .failure(let err):
                completion(false)
            case .success(let value):
                let json = JSON(value)
                completion(true)
            }
        }
        
    }
    
    static func postHeartRateVariabilities(_ data: [(Double, Date)], completion: @escaping ((Bool)->Void)) {
        
        let url = URL(string: heartRateVariabilityUrl)!
        
        var dataDict: [[String: Any]] = []
        data.forEach { (tuple) in
            dataDict.append([
                "value": tuple.0,
                "recorded_at": tuple.1.toAPIString
            ])
        }
        
        let parameters: [String: Any] = [
            "heart_rate_variabilities": dataDict
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
            switch response.result {
            case .failure(let err):
                completion(false)
            case .success(let value):
                let json = JSON(value)
                completion(true)
            }
        }
        
    }
    
}
