//
//  ActivitySubtype.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

/**
 Enumeration of strings used as identifiers for the `SampleActivity`s used in
 the app.
 */
enum ActivitySubType: String, Codable {
    case outdoor
    case indoor
    
    case other
    
    case outdoorWalk
    case hamstringStretch
    case takeMedication
    
    case backPain
    case mood
    case bloodGlucose
    case weight
    
    case caffeine
}
