//
//  Event.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 30/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import CareKit

struct Event {
    
    static var className: String {
        return "Event"
    }
    
    static var attName: String {
        return "event"
    }
    
    let numberOfDaysSinceStart: Int
    
    let occurrenceIndexOfDay: Int
    
    let state: OCKCarePlanEventState
    
    let maxHeartRate: Double
    
    func dateComponents(sinceStartDate: DateComponents) -> DateComponents {
        var comp = sinceStartDate
        comp.calendar = Calendar.current
        return Calendar.current.dateComponents([.year, .month, .day], from: comp.date!.adding(.day, value: numberOfDaysSinceStart)) 
    }
    
}

extension Event: Parsable {
    init(dictionary: [String : Any]) {
        numberOfDaysSinceStart = dictionary["number_of_days_since_start"] as? Int ?? 0
        occurrenceIndexOfDay = dictionary["occurrence_index_of_day"] as? Int ?? 0
        state = OCKCarePlanEventState(rawValue: Int(dictionary["state"] as? String ?? "") ?? -1) ?? .initial
        maxHeartRate = dictionary["max_heart_rate"] as? Double ?? 0.0
    }
}

extension Event {
    static func events(from dict: [[String: Any]]) -> [Event] {
        var events = [Event]()
        for d in dict {
            events.append(Event(dictionary: d))
        }
        return events
    }
}

extension Array where Element == Event {
    var firstEvent: Event? {
        return self.min(by: {$0.numberOfDaysSinceStart < $1.numberOfDaysSinceStart})
    }
    
    var lastEvent: Event? {
        return self.max(by: {$0.numberOfDaysSinceStart < $1.numberOfDaysSinceStart})
    }
}
