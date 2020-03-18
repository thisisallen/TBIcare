
//
//  File.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 21/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
#if !os(iOS)
import WatchKit
#endif

enum WorkoutEventState : Int {
    // Initial state with no response.
    case initial
    // Marked as not complete.
    case notCompletedWatchMessage
    // Marked as complete.
    case completed
}

class WorkoutEvent : NSObject {
    
    // MARK: Properties
    
    // The index of this event on the given day.
    let occurrenceIndexOfDay : Int
    // The identifier of the associated activity.
    var activityIdentifier : String
    // The state of this event (Initial / NotCompleted / Completed).
    var state : WorkoutEventState
    
    
    // MARK: Initialization
    
    init?(dictionary: [String:Any]) {
        self.occurrenceIndexOfDay = dictionary["occurrenceIndexOfDay"] as? Int ?? 0
        self.state = WorkoutEventState(rawValue: dictionary["state"] as? Int ?? 0) ?? .initial
        self.activityIdentifier = dictionary["activityIdentifier"] as? String ?? ""
    }
    
    init(occurrenceIndexOfDay: Int, activityIdentifier: String, state: WorkoutEventState) {
        self.occurrenceIndexOfDay = occurrenceIndexOfDay
        self.activityIdentifier = activityIdentifier
        self.state = state
    }
    
}
