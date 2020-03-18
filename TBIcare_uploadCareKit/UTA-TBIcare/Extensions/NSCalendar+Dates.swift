//
//  RootViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 02/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension Calendar {
    /**
        Returns a tuple containing the start and end dates for the week that the
        specified date falls in.
     */
    func weekDatesForDate(_ date: Date) -> (start: Date, end: Date) {
        var interval: TimeInterval = 0
        var start: Date = Date()
        _ = dateInterval(of: .weekOfYear, start: &start, interval: &interval, for: date)
        let end = start.addingTimeInterval(interval)
        
        return (start as Date, end as Date)
    }
}

extension String {
    /// Using ISO8601 format
    var toDate: Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let fallbackFormatter = DateFormatter()
        fallbackFormatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: self) ?? fallbackFormatter.date(from: self)
    }
}

extension Date {
    var toAPIString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: self)
    }
}
