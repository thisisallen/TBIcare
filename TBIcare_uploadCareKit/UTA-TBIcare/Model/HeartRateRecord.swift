//
//  HeartRateRecord.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 29/01/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import Foundation

struct HeartRateRecord: Codable, Equatable, Comparable {
    var value: Double
    var recordedAt: Date
    
    static func == (lhs: HeartRateRecord, rhs: HeartRateRecord) -> Bool {
        return lhs.value == rhs.value
    }
    
    static func < (lhs: HeartRateRecord, rhs: HeartRateRecord) -> Bool {
        return lhs.value < rhs.value
    }
}

extension HeartRateRecord {
    var toDictionary: [String: Any] {
        return [
            "value": value,
            "recorded_at": recordedAt
        ]
    }
    
    var toAPIDictionary: [String: Any] {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return [
            "value": value,
            "recorded_at": formatter.string(from: recordedAt)
        ]
    }
    
    init?(dictionary: [String: Any]) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        guard let v = dictionary["value"] as? Double, let r = dictionary["recorded_at"] as? Date ?? dictionary["recordedAt"] as? Date ??
            formatter.date(from: dictionary["recorded_at"] as? String ?? "") else { return nil }
        value = v
        recordedAt = r
    }
}

extension Array where Element == HeartRateRecord {
    var toDictionaryArray: [[String: Any]] {
        return self.map({ $0.toDictionary })
    }
    
    var toAPIDictionaryArray: [[String: Any]] {
        return self.map({ $0.toAPIDictionary }).compactMap({$0})
    }
}
