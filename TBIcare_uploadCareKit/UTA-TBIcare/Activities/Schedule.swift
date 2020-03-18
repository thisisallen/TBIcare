//
//  Schedule.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation


enum Schedule {
    case daily(freqPerDay: UInt, skipDays: UInt, endDate: DateComponents?)
    case weekly(occurrencesFromSundayToSaturday: [NSNumber], weeksToSkip: UInt, endDate: DateComponents?)
    
    static var attName: String {
        return "schedule"
    }
    
    static func create(dictionary: [String: Any]) -> Schedule {
        
        let typeString = dictionary["type"] as? String ?? ""
        let frequency = dictionary["frequency"] as? [String] ?? []
        let endDate = (dictionary["end_date"] as? String ?? "").toDate ?? Date()
        let endDateComponents = Calendar.current.dateComponents([.year, .month, .day], from: endDate)
        let skip = dictionary["skips"] as? NSNumber
        
        var schedule: Schedule!
        switch typeString {
        case "weekly":
            let freq = frequency.map({NSNumber(value: Int($0) ?? 0)})
            schedule = Schedule.weekly(occurrencesFromSundayToSaturday: freq, weeksToSkip: skip!.uintValue, endDate: endDateComponents)
        case "daily":
            schedule = Schedule.daily(freqPerDay: UInt((frequency.first ?? "").int ?? 0), skipDays: skip!.uintValue, endDate: endDateComponents)
        default:
            break
        }
        
        return schedule
        
    }
}
