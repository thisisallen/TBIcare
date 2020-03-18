//
//  WatchActivity.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 16/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
import HealthKit
#if !os(iOS)
import WatchKit
#endif

enum WorkoutActivityType: String {
    // Care plan activities of type interventions.
    case intervention
    // Care plan activities of type assessments.
    case assessment
}

class WorkoutActivity : NSObject {
    
    // MARK: Properties
    
    // Unique identifier string.
    let identifier : String
    // The type of activity.
    let type : WorkoutActivityType
    // The title of the activity.
    var title : String
    // A descriptive text for the activity.
    var text : String?
    // The tint color for the activity.
    let tintColor : UIColor?
    // The bool: isOptional for the activity.
    let isOptional: Bool?
    // An array of all the events associated with the activity for today.
    var eventsForToday : [WorkoutEvent?]
    
    var workoutType: HKWorkoutActivityType
    
    var locationType: HKWorkoutSessionLocationType
    
    var completed: Bool
    
    var eventsCompleted: Bool {
        return eventsForToday.reduce(true, {$0 && $1?.state == .completed})
    }
    
    var activityTarget: ActivityTarget?
    
    var time: TimeInterval? = nil
    
    var distance: Double? = nil
    
    var steps: Int? = nil
    
    var heartRate: Double? = nil
    
    
    // MARK: Initialization
    
    override init() {
        identifier = ""
        type = .intervention
        title = ""
        text = nil
        tintColor = nil
        isOptional = nil
        eventsForToday = []
        completed = false
        workoutType = .walking
        locationType = .unknown
    }
    
    init?(dictionary dict: [String: Any]) {
        guard let identifier = dict["identifier"] as? String,
            let title = dict["title"] as? String else {
                return nil
        }
            
        
        self.identifier = identifier
        self.type = dict["isIntervention"] as! Bool ? .intervention : .assessment
        self.title = title
        self.text = dict["text"] as? String
        self.tintColor = dict["tintColor"] as? UIColor
        self.isOptional = dict["isOptional"] as? Bool
        self.eventsForToday = []
        self.completed = dict["completed"] as? Bool ?? false
        self.activityTarget = dict["activityTarget"] as? ActivityTarget
        
//        self.targetTime = dict["targetDistance"] as? TimeInterval
//        self.targetSteps = dict["targetHeartRate"] as? Double
//        self.targetTime = dict["targetDistance"] as? Int
//        self.targetSteps = dict["targetHeartRate"] as? Double
        self.time = dict["time"] as? TimeInterval
        self.distance = dict["distance"] as? Double
        self.steps = dict["steps"] as? Int
        self.heartRate = dict["heartRate"] as? Double
        self.workoutType = HKWorkoutActivityType(rawValue: dict["workoutType"] as? UInt ?? 3000) ?? .other
        self.locationType = HKWorkoutSessionLocationType(rawValue: dict["locationType"] as? Int ?? 1) ?? .unknown
    }
    
//    init?(interventionWithIdentifier identifier: String,
//          title: String,
//          text: String?,
//          isIntervention: Bool?,
//          tintColor: UIColor?,
//          isOptional: Bool?,
//          numberOfEventsForToday: UInt) {
//        self.identifier = identifier
//        if isIntervention! {
//            self.type = .intervention
//        }
//        else {
//            self.type = .assessment
//        }
//        self.title = title
//        self.text = text
//        self.tintColor = tintColor
//        self.isOptional = isOptional
//        self.eventsForToday = [WorkoutEvent?](repeating: nil, count: Int(numberOfEventsForToday))
//        self.completed = false
//    }
    
    // MARK: Event Querying
    
    func getNumberOfCompletedEvents() -> Int {
        return eventsForToday.map({$0?.state == .completed ? 1 : 0}).reduce(0, +)
    }
    
}


