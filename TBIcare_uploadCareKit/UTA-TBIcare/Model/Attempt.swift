//
//  Attempt.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 07/10/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

struct Attempt {
    var time: TimeInterval
    var heartRates: [HeartRateRecord]
    var steps: Int?
    var distance: Double?
    var activeBurnedEnergy: Double?
    var vo2Max: [Double]
    var heartRateVariability: [Double]
    var completed: Bool
    var activityName: String?
    private(set) var allTargetsReached: Bool = false
    
    mutating func setAllTargetsReached(targets: ActivityTarget) {
        self.allTargetsReached = time >= targets.time &&
            (distance ?? 0) >= targets.distance &&
            (heartRates.max()?.value ?? 0) >= targets.heartRate
    }
}

extension Attempt {
    var heartRateVariabilityAPI: String {
        return reduceArrayToString(heartRateVariability)
    }
    
    var vo2MaxAPI: String {
        return reduceArrayToString(vo2Max)
    }
    
    func reduceArrayToString(_ arr: [Double]) -> String {
        return arr.map({String($0)}).joined(separator: ",")
    }
}
