//
//  APIModels.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 18/11/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

class EventModel {
    enum State: Int {
        // Initial state with no response.
        case initial
        // Marked as not complete.
        case notCompletedWatchMessage
        // Marked as complete.
        case completed
    }
    
    var numberOfDaysSinceStart: Int = 0
    
    var occurrenceIndexOfDay: Int = 0
    
    var state: State = .initial
    
    var maxHeartRate: Double?
    
    init(dictionary: [String: Any]) {
        numberOfDaysSinceStart = dictionary["number_of_days_since_start"] as? Int ?? 0
        occurrenceIndexOfDay = dictionary["occurrence_index_of_day"] as? Int ?? 0
        state = State(rawValue: Int(dictionary["state"] as? String ?? "") ?? 0) ?? .initial
        maxHeartRate = dictionary["max_heart_rate"] as? Double
    }
}

class ActivityModel: Codable {
    var groupId: String?
    var type: String?
    var subtype: String?
    var locationType: String?
    var title: String?
    var text: String?
    var instructions: String?
    var imageUrl: String?
    var color: String?
    var resultResettable: Int?
    var optional: Int?
    var targetHeartRate: Int?
    var targetSteps: Int?
    var targetDistance: Double?
    var targetTime: TimeInterval?
    var summary: String?
    var startDate: String?
}

class AttemptModel {
    var time: TimeInterval = 0
    var heartRates: [HeartRateRecord] = []
    var steps: Int?
    var distance: Double?
    var activeBurnedEnergy: Double?
    var vo2Max: [Double] = []
    var heartRateVariability: [Double] = []
    var completed: Bool = false
    var activityName: String?
    var event: EventModel?
    var activity: ActivityModel?
    var createdAt: Date?
    var avgHeartRate: Double {
        return heartRates.reduce(into: 0) { (result, record) in
            result = result + record.value
            } / Double(max(heartRates.count, 1))
    }
    var maxHeartRate: Double {
        return heartRates.map({ $0.value }).max() ?? 0
    }
    
    init(dictionary: [String: Any]) {
        time = dictionary["time"] as? TimeInterval ?? 0
        heartRates = ((dictionary["heart_rates"] as! [[String: Any]]).map({ HeartRateRecord(dictionary: $0) }) as! [HeartRateRecord]).compactMap({ $0 })
        steps = dictionary["steps"] as? Int
        distance = dictionary["distance"] as? Double
        activeBurnedEnergy = dictionary["active_energy_burned"] as? Double
        vo2Max = (dictionary["vo2_max"] as? [String])?.map({Double($0) ?? 0.0}) ?? []
        heartRateVariability = (dictionary["heart_rate_variability"] as? [String])?.map({Double($0) ?? 0.0}) ?? []
        event = EventModel.init(dictionary: dictionary["event"] as? [String: Any] ?? [:])
        createdAt = (dictionary["created_at"] as? String)?.toDate
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            activity = try decoder.decode(ActivityModel.self, from: (dictionary["activity"] as? [String: Any])?.jsonData() ?? Data())
        } catch {
            print(error)
        }
        
        completed = event?.state == .some(.completed)
        activityName = activity?.title
    }
}


extension AttemptModel {
    
    var cellTimeText: String {
        let timeSpent: String = time.timeAsString(style: .positional,
        allowedUnits: [.minute, .second],
        zeroFormattingBehavior: .default)
        var targetTimeString: String? = nil
        if let targetTime = activity?.targetTime {
            targetTimeString = targetTime.timeAsString(style: .positional,
            allowedUnits: [.minute, .second],
            zeroFormattingBehavior: .default)
        }
        
        return timeSpent + (targetTimeString != nil ? "/\(targetTimeString ?? "")" : "")
    }
    
}
