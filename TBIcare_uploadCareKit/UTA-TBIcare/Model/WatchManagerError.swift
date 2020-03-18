//
//  WatchManagerError.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/02/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import Foundation

enum WatchManagerError: String {
    
    case notLoggedIn
    case unableToLoadActivities
    
    var message: String {
        switch self {
        case .notLoggedIn:
            return "Please login on your iPhone"
        case .unableToLoadActivities:
            return "Unable to load activities"
        }
    }
    
}
