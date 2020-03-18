//
//  NotificationsManager.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 19/11/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UserNotifications

class NotificationsManager {
    
    static let shared = NotificationsManager()
    
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
        let content      = UNMutableNotificationContent()
        content.title    = notification.title
        content.body     = notification.body
        content.sound    = .default
        
        let timeInterval = notification.timeIntervalFrequency
        let count = postponesCount(forDate: Date().addingTimeInterval(timeInterval), ifAtNightForTimeInterval: timeInterval)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval * Double(count), repeats: true)
        
        let request = UNNotificationRequest(identifier: notification.rawValue, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            
            guard error == nil else { return }
            
            print("Notification scheduled! --- ID = \(notification.rawValue)")
            
            self.notifications.append(notification)
        }
    }
    
    private func postponesCount(forDate date: Date, ifAtNightForTimeInterval timeInterval: TimeInterval) -> Int {
        var scheduledDate = date
        var counter = 1
        let prevStart = scheduledDate.prev11pm
        let prevEnd = scheduledDate.prev6am
        let comingStart = scheduledDate.coming11pm
        let comingEnd = scheduledDate.coming6am
        while scheduledDate.isBetween(prevStart, prevEnd) || scheduledDate.isBetween(comingStart, comingEnd) {
            counter += 1
            scheduledDate = scheduledDate.addingTimeInterval(timeInterval)
        }
        return counter
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
    case weekly
    case daily4Hours
    case workoutRunning
    
    var title: String {
        switch self {
        case .weekly:
            return "You haven't done any workout for a week"
        case .daily4Hours:
            return "Time for the next workout"
        case .workoutRunning:
            return "Workout is still running"
        }
    }
    
    var body: String {
        switch self {
        case .weekly:
            return "Catch up now and get back on track 💪🏼"
        case .daily4Hours:
            return "Keep your record running 🎯"
        case .workoutRunning:
            return "Are you done with your workout?"
        }
    }
    
    var datetime: DateComponents {
        switch self {
        case .weekly:
            return Calendar.current.dateComponents([.year, .month, .day], from: Date().adding(.day, value: 7))
        case .daily4Hours:
            return Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: Date().adding(.hour, value: 4))
        case .workoutRunning:
            return Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: Date().adding(.second, value: 2))
        }
    }
    
    var timeIntervalFrequency: TimeInterval {
        switch self {
        case .weekly:
            return 60*60*24*7
        case .daily4Hours:
            return 60*60*4
        case .workoutRunning:
            return 4
        }
    }
    
}
