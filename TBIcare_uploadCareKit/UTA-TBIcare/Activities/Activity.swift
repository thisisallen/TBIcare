//
//  Activity.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 04/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import CareKit

struct Activity: ActivityProtocol {
    
    var id: String
    var events: [Event]
    var carePlanActivity: OCKCarePlanActivity!
    var startDate: Date
    var workoutType: UInt
    var locationType: Int
    var numberOfDaysSinceStart: Int {
        let date1 = Calendar.current.startOfDay(for: startDate)
        let date2 = Calendar.current.startOfDay(for: Date())
        return Calendar.current.dateComponents([.day], from: date1, to: date2).day ?? -1
//        let diff = date.daysSince(carePlanActivity.schedule.startDate.date ?? Date())
//        return Int(diff.rounded(FloatingPointRoundingRule.up))
    }
    
    init(id: String,
         type: ActivityType,
         events: [Event],
         groupId: String?,
         title: String,
         summary: String?,
         instructions: String?,
         imageURL: String?,
         startDate: Date,
         schedule: Schedule,
         activityTarget: ActivityTarget,
         workoutType: UInt,
         locationType: Int) {
        
        self.id = id
        self.events = events
        self.startDate = startDate
        self.workoutType = workoutType
        self.locationType = locationType
        carePlanActivity = createCarePlanActivity(type: type, groupId: groupId, title: title, summary: summary, instructions: instructions, imageURL: imageURL, startDate: Calendar.current.dateComponents([.year, .month, .day], from: startDate), schedule: schedule, activityTarget: activityTarget)
        
    }
    
    func createCarePlanActivity(type: ActivityType,
                                 groupId: String?,
                                 title: String,
                                 summary: String?,
                                 instructions: String?,
                                 imageURL: String?,
                                 startDate: DateComponents,
                                 schedule: Schedule,
                                 activityTarget: ActivityTarget) -> OCKCarePlanActivity {
        
        var activity: OCKCarePlanActivity!
        var ockSchedule: OCKCareSchedule!
        
        switch schedule {
        case .daily(let freqPerDay, let skipDays, let endDate):
            ockSchedule = OCKCareSchedule.dailySchedule(withStartDate: startDate, occurrencesPerDay: freqPerDay, daysToSkip: skipDays, endDate: endDate)
        case .weekly(let occurrencesFromSundayToSaturday, let weeksToSkip, let endDate):
            ockSchedule = OCKCareSchedule.weeklySchedule(withStartDate: startDate, occurrencesOnEachDay: occurrencesFromSundayToSaturday, weeksToSkip: weeksToSkip, endDate: endDate)
        }
        
        switch type {
        case .intervention(let color, let optional):
            activity = OCKCarePlanActivity.intervention(withIdentifier: id,
                                                        groupIdentifier: groupId,
                                                        title: title,
                                                        text: summary,
                                                        tintColor: color,
                                                        instructions: instructions,
                                                        imageURL: URL(string: imageURL ?? ""),
                                                        schedule: ockSchedule,
                                                        userInfo: ["activityTarget":activityTarget,
                                                                   "workoutType": workoutType,
                                                                   "locationType": locationType],
                                                        optional: optional)
            
        case .assessment(let color, let resultResettable, let optional):
            activity = OCKCarePlanActivity.assessment(withIdentifier: id,
                                                      groupIdentifier: groupId,
                                                      title: title,
                                                      text: summary,
                                                      tintColor: color,
                                                      resultResettable: resultResettable,
                                                      schedule: ockSchedule,
                                                      userInfo: ["activityTarget":activityTarget,
                                                                 "workoutType": workoutType,
                                                                 "locationType": locationType],
                                                      optional: optional)
            
        case .readOnly:
            activity = OCKCarePlanActivity.readOnly(withIdentifier: id,
                                                    groupIdentifier: groupId,
                                                    title: title,
                                                    text: summary,
                                                    instructions: instructions,
                                                    imageURL: URL(string: imageURL ?? ""),
                                                    schedule: ockSchedule,
                                                    userInfo: ["activityTarget":activityTarget,
                                                               "workoutType": workoutType,
                                                               "locationType": locationType])
        }
        
        return activity
    }
    
    func isDoableToday() -> Bool {
        let date = Date()
        for event in events {
            let evDate = event.dateComponents(sinceStartDate: carePlanActivity.schedule.startDate)
            if evDate.year == date.year,
                evDate.month == date.month,
                evDate.day == date.day {
                return event.state.rawValue != 2
            }
        }
        
        return false
    }
    
}


extension Activity {
    
    init?(dictionary: [String: Any]) {
        guard !dictionary.isEmpty else { return nil }
        let date = (dictionary["start_date"] as? String ?? "").toDate ?? Date()
        let events = Event.events(from: dictionary["events"] as? [[String: Any]] ?? [])
        
        ImageCacheManager.shared.cacheImage(withUrl: dictionary["image_url"] as? String ?? "")
        let imagePath = ImageCacheManager.shared.retrieveImagePath(withUrl: dictionary["image_url"] as? String ?? "")
        
        self.init(id: dictionary["id"] as? String ?? "",
                  type: ActivityType.create(dictionary: dictionary) ?? .readOnly,
                  events: events,
                  groupId: dictionary["group_id"] as? String,
                  title: dictionary["title"] as? String ?? "",
                  summary: dictionary["summary"] as? String ?? "",
                  instructions: dictionary["instructions"] as? String ?? "",
                  imageURL: imagePath,
                  startDate: date,
                  schedule: Schedule.create(dictionary: dictionary["schedule"] as? [String: Any] ?? [:]),
                  activityTarget: ActivityTarget(time: dictionary["target_time"] as? Double ?? 0.0,
                                                 steps: dictionary["target_steps"] as? Int ?? 0,
                                                 distance: dictionary["target_distance"] as? Double ?? 0,
                                                 heartRate: dictionary["target_heart_rate"] as? Double ?? 0,
                                                 activeBurnedEnergy: dictionary["target_active_burned_energy"] as? Double ?? 0),
                  workoutType: UInt((dictionary["workout_type"] as? [String: Any] ?? [:])["id"] as? String ?? "") ?? 3000,
                  locationType: Int(dictionary["subtype"] as? String ?? "") ?? 1)
    }
    
    init?(dictionary: [String: Any], id: String, events: [Event]) {
        var tmpDict = dictionary
        tmpDict["id"] = id
        tmpDict["events"] = events
        self.init(dictionary: tmpDict)
    }
    
}


extension OCKCarePlanActivity {
    func isActivityToday() -> Bool {
        
        guard let endDate = schedule.endDate?.date, endDate.compare(Date()) == .orderedAscending else { return false }
        guard let _ = schedule.startDate.date else { return false }
        let currentDate = Date()
        
        switch schedule.type {
        case .weekly:
            return Int(truncating: schedule.occurrences[currentDate.day]) > 0
        case .daily:
            return true
        case .other:
            return false
        @unknown default:
            return false
        }
        
    }
}
