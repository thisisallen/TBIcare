//
//  Utilities.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 18/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import HealthKit

func computeDurationOfWorkout(withEvents workoutEvents: [HKWorkoutEvent]?, startDate: Date?, endDate: Date?) -> TimeInterval {
    var duration = 0.0
    
    if var lastDate = startDate {
        var paused = false
        
        if let events = workoutEvents {
            for event in events {
                switch event.type {
                case .pause:
                    duration += event.date.timeIntervalSince(lastDate)
                    paused = true
                    
                case .resume:
                    lastDate = event.date
                    paused = false
                    
                default:
                    continue
                }
            }
        }
        
        if !paused {
            if let end = endDate {
                duration += end.timeIntervalSince(lastDate)
            } else {
                duration += NSDate().timeIntervalSince(lastDate)
            }
        }
    }
    
    print("\(duration)")
    return duration
}

func format(energy: HKQuantity) -> String {
    return String(format: "%.1f Calories", energy.doubleValue(for: HKUnit.kilocalorie()))
}

func format(distance: HKQuantity) -> String {
    return String(format: "%.1f mi", distance.doubleValue(for: HKUnit.mile()))
}

func format(steps: HKQuantity) -> String {
    return String(format: "%.1f Steps", steps.doubleValue(for: HKUnit.count()))
}

func format(beats: HKQuantity?) -> String {
    guard let beats = beats else {
        return "-- BPM"
    }
    return String(format: "%.1f BPM", beats.doubleValue(for: HKUnit.count().unitDivided(by: HKUnit.minute())))
}

func format(duration: TimeInterval) -> String {
    let durationFormatter = DateComponentsFormatter()
    durationFormatter.unitsStyle = .positional
    durationFormatter.allowedUnits = [.second, .minute, .hour]
    durationFormatter.zeroFormattingBehavior = .pad
    
    if let string = durationFormatter.string(from: duration) {
        return string
    } else {
        return ""
    }
}

func format(activityType: HKWorkoutActivityType) -> String {
    let formattedType : String
    
    switch activityType {
    case .walking:
        formattedType = "Walking"
        
    case .running:
        formattedType = "Running"
        
    case .hiking:
        formattedType = "Hiking"
        
    default:
        formattedType = "Workout"
    }
    
    return formattedType
}

func format(locationType: HKWorkoutSessionLocationType) -> String {
    let formattedType : String
    
    switch locationType {
    case .indoor:
        formattedType = "Indoor"
        
    case .outdoor:
        formattedType = "Outdoor"
        
    case .unknown:
        formattedType = "Unknown"
    }
    
    return formattedType
}

