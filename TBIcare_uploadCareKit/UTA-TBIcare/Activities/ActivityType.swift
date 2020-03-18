//
//  ActivityType.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

enum ActivityType {
    case intervention(color: UIColor?, optional: Bool)
    case assessment(color: UIColor?, resultResettable: Bool, optional: Bool)
    case readOnly
    
    static func create(dictionary: [String: Any]) -> ActivityType? {
        let typeString = (dictionary["type"] as? String)?.lowercased() ?? "intervention"
        let color = UIColor(hexString: dictionary["color"] as? String ?? "")
        let optional = dictionary["optional"] as? Bool ?? false
        let resultResettable = dictionary["result_resettable"] as? Bool ?? false
        var type: ActivityType?
        switch typeString {
        case "intervention":
            type = ActivityType.intervention(color: color, optional: optional)
        case "assessment":
            type = ActivityType.assessment(color: color, resultResettable: resultResettable, optional: optional)
        case "readonly":
            type = ActivityType.readOnly
        default:
            break
        }
        
        return type
    }
    
    var name: String {
        switch self {
        case .intervention:
            return "intervention"
        case .assessment:
            return "assessment"
        case .readOnly:
            return "readOnly"
        }
    }
}
