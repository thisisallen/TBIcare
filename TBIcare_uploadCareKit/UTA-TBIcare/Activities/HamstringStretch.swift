////
////  LoadingIndicator.swift
////  
////
////  Created by Ammar AlTahhan on 05/02/2019.
////  Copyright © 2019 Ammar AlTahhan. All rights reserved.
////
//
//import CareKit
//
///**
// Struct that conforms to the `Activity` protocol to define a hamstring stretch
// activity.
// */
//struct HamstringStretch: ActivityProtocol {
//    // MARK: Activity
//    
//    let activityType: ActivitySubType = .hamstringStretch
//    
//    func carePlanActivity() -> OCKCarePlanActivity {
//        // Create a weekly schedule.
//        let startDate = DateComponents(year: 2016, month: 01, day: 01)
//        let schedule = OCKCareSchedule.weeklySchedule(withStartDate: startDate as DateComponents, occurrencesOnEachDay: [2, 1, 1, 1, 1, 1, 2])
//        
//        // Get the localized strings to use for the activity.
//        let title = NSLocalizedString("Hamstring Stretch", comment: "")
//        let summary = NSLocalizedString("5 mins", comment: "")
//        let instructions = NSLocalizedString("Gentle hamstring stretches on both legs.", comment: "")
//        
//        // Create the intervention activity.
//        let activity = OCKCarePlanActivity.intervention(
//            withIdentifier: activityType.rawValue,
//            groupIdentifier: "Physical Activity",
//            title: title,
//            text: summary,
//            tintColor: Colors.blue.color,
//            instructions: instructions,
//            imageURL: nil,
//            schedule: schedule,
//            userInfo: nil,
//            optional: false
//        )
//        
//        return activity
//    }
//}
