//
//  NotificationCenter.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 21/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension Notification.Name {
    static var watchSessionActiviated: Notification.Name {
        return Notification.Name("watchSessionActiviated")
    }
    static var pauseWorkout: Notification.Name {
        return Notification.Name("pauseWorkout")
    }
    static var resumeWorkout: Notification.Name {
        return Notification.Name("resumeWorkout")
    }
    static var stopWorkout: Notification.Name {
        return Notification.Name("stopWorkout")
    }
}
