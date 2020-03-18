//
//  WatchNotificationManager.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 08/02/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UserNotifications

class WatchNotificationsManager {
    
    static let shared = WatchNotificationsManager()
    
    private var notifications = [LocalNotification]()
    
    private init() {
        requestAuthorization()
    }
    
    private func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            
            if granted == true && error == nil {
                
            }
        }
    }
    
    private func scheduleNotifications(notification: LocalNotification) {
        let content                 = UNMutableNotificationContent()
        content.title               = notification.title
        content.body                = notification.body
        content.categoryIdentifier  = notification.categoryIdentifier.rawValue
        content.sound               = .default
        
//        let timeInterval = notification.timeIntervalFrequency
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: notification.datetime, repeats: true)
            //UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: true)
        
        let request = UNNotificationRequest(identifier: notification.rawValue, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            
            guard error == nil else { return }
            
            print("Watch Notification scheduled! --- ID = \(notification.rawValue)")
            
            self.notifications.append(notification)
        }
    }
    
    func schedule(notification: LocalNotification) {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            
            switch settings.authorizationStatus {
            case .notDetermined:
                self.requestAuthorization()
            case .authorized, .provisional:
                self.scheduleNotifications(notification: notification)
            default:
                break // Do nothing
            }
            
            self.listScheduledNotifications()
        }
        
        
    }
    
    func remove(notification: LocalNotification) {
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [notification.rawValue])
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [notification.rawValue])
    }
    
    func listScheduledNotifications() {
        UNUserNotificationCenter.current().getPendingNotificationRequests { notifications in
            for notification in notifications {
                print(notification)
            }
        }
    }
    
}

enum LocalNotification: String {
    case workoutRunning
    
    var title: String {
        switch self {
        case .workoutRunning:
            return "Workout is still running"
        }
    }
    
    var body: String {
        switch self {
        case .workoutRunning:
            return ""
        }
    }
    
    var datetime: DateComponents {
        switch self {
        case .workoutRunning:
            return Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: Date().adding(.second, value: 2))
        }
    }
    
    var timeIntervalFrequency: TimeInterval {
        switch self {
        case .workoutRunning:
            return 60
        }
    }
    
    var categoryIdentifier: WatchNotificationCategory {
        switch self {
        case .workoutRunning:
            return .workout
        }
    }
    
}
