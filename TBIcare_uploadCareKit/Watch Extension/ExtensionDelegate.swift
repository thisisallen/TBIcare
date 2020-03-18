//
//  ExtensionDelegate.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 14/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import WatchKit
import UserNotifications

class ExtensionDelegate: NSObject, WKExtensionDelegate, UNUserNotificationCenterDelegate {

    func applicationDidFinishLaunching() {
        // Perform any final initialization of your application.
//        WatchSessionManager.shared.startSession()
//        WatchLightSessionManager.shared.startSession()
        registerNotifications()
        UNUserNotificationCenter.current().delegate = self
        
    }

    func applicationDidBecomeActive() {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillResignActive() {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, etc.
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        if let workoutAction = WatchNotificationAction(rawValue: response.actionIdentifier) {
            if workoutAction == .stopWorkout {
                NotificationCenter.default.post(name: .stopWorkout, object: nil)
            }
        }
        
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.sound, .alert])
        
    }
    
    func registerNotifications() {
      // Configure the action for the primary category
        let modalAction = UNNotificationAction(identifier: WatchNotificationAction.stopWorkout.rawValue,
                                               title: "Stop Workout",
                                               options: [.foreground])
            
      // Configure the primary category with the desired actions
      let primaryCategory = UNNotificationCategory(identifier: WatchNotificationCategory.workout.rawValue,
                                                   actions: [modalAction],
                                                   intentIdentifiers: [],
                                                   options: [])

      let categories: Set<UNNotificationCategory> = [primaryCategory]
      UNUserNotificationCenter.current().setNotificationCategories(categories)
    }


    func handle(_ backgroundTasks: Set<WKRefreshBackgroundTask>) {
        // Sent when the system needs to launch the application in the background to process tasks. Tasks arrive in a set, so loop through and process each one.
        for task in backgroundTasks {
            // Use a switch statement to check the task type
            switch task {
            case let backgroundTask as WKApplicationRefreshBackgroundTask:
                // Be sure to complete the background task once you’re done.
                backgroundTask.setTaskCompletedWithSnapshot(false)
            case let snapshotTask as WKSnapshotRefreshBackgroundTask:
                // Snapshot tasks have a unique completion call, make sure to set your expiration date
                snapshotTask.setTaskCompleted(restoredDefaultState: true, estimatedSnapshotExpiration: Date.distantFuture, userInfo: nil)
            case let connectivityTask as WKWatchConnectivityRefreshBackgroundTask:
                // Be sure to complete the connectivity task once you’re done.
                connectivityTask.setTaskCompletedWithSnapshot(false)
            case let urlSessionTask as WKURLSessionRefreshBackgroundTask:
                // Be sure to complete the URL session task once you’re done.
                urlSessionTask.setTaskCompletedWithSnapshot(false)
//            case let relevantShortcutTask as WKRelevantShortcutRefreshBackgroundTask:
                // Be sure to complete the relevant-shortcut task once you're done.
//                relevantShortcutTask.setTaskCompletedWithSnapshot(false)
//            case let intentDidRunTask as WKIntentDidRunRefreshBackgroundTask:
                // Be sure to complete the intent-did-run task once you're done.
//                intentDidRunTask.setTaskCompletedWithSnapshot(false)
            default:
                // make sure to complete unhandled task types
                task.setTaskCompletedWithSnapshot(false)
            }
        }
    }

}
