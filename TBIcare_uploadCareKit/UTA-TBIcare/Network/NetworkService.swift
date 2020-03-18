//
//  NetworkService.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 04/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

class NetworkService {
    
    static var MAIN: String {
        #if DEBUG
        return "http://18.221.228.206:3030/api"
        #else
        return "https://gotbi.online/api"
        #endif
    }
    
    static let loginUrl = MAIN + "/login"
    
    static let activitiesUrl = MAIN + "/activities"
    
    static let eventsUrl = MAIN + "/event"
    
    static let attemptsUrl = MAIN + "/attempt"
    
    static let vo2MaxUrl = MAIN + "/vo2_max"
    
    static let heartRateVariabilityUrl = MAIN + "/heart_rate_variability"
    
    static let painAssessmentUrl = MAIN + "/painAssessment"
    
    static let connectUrl = MAIN + "/connect"
    
    
    
    static func headers() -> [String: String] {
        return ["Authorization": UserDefaults.standard.authToken(),
                "Accept": "application/json",
                "Content-Type":"application/json"]
    }
    
}
