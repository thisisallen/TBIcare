//
//  NotificationController.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 14/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import WatchKit
import Foundation
import UserNotifications


class NotificationController: WKUserNotificationInterfaceController {

    override init() {
        // Initialize variables here.
        super.init()
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func didReceive(_ notification: UNNotification, withCompletion completionHandler: @escaping (WKUserNotificationInterfaceType) -> Void) {
        
    }

    override func didReceive(_ notification: UNNotification) {
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
    }
}
