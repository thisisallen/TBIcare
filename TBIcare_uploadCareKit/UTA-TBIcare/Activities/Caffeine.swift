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
// Struct that conforms to the `Activity` protocol to define an exercises activity.
// */
//struct Caffeine: ActivityProtocol {
//    // MARK: Activity
//    
//    let activityType: ActivitySubType = .caffeine
//    
//    func carePlanActivity() -> OCKCarePlanActivity {
//        // Create a weekly schedule.
//        let startDate = DateComponents(year: 2016, month: 01, day: 01)
//        let schedule = OCKCareSchedule.weeklySchedule(withStartDate: startDate as DateComponents, occurrencesOnEachDay: [2, 1, 1, 1, 1, 1, 2])
//        
//        // Get the localized strings to use for the activity.
//        let title = NSLocalizedString("Caffeine", comment: "")
//        let summary = NSLocalizedString("Avoid Caffeine.", comment: "")
//        let instructions = NSLocalizedString("Avoid caffeine consumption.", comment: "")
//        
//        // Create the read only activity.
//        let activity = OCKCarePlanActivity.readOnly(withIdentifier: activityType.rawValue,
//                                                    groupIdentifier: nil,
//                                                    title: title,
//                                                    text: summary,
//                                                    instructions: instructions,
//                                                    imageURL: nil,
//                                                    schedule: schedule,
//                                                    userInfo: nil)
//        
//        return activity
//    }
//}
//
//
