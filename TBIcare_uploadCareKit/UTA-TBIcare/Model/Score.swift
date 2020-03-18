//
//  Score.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 21/12/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

struct Score: Codable {
    
    var gained: Double
    var total: Double
    var badges: [Int]
    
    var scoreRatio: Double {
        return gained / total
    }
    
    enum CodingKeys: String, CodingKey {
        case gained, total
        case badges = "badges_count"
    }
    
}
