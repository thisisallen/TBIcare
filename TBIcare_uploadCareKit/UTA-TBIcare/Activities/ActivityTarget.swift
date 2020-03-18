//
//  ActivityTarget.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 23/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

@objc(ActivityTarget)
class ActivityTarget: NSObject, NSCoding {
    var time: TimeInterval
    var steps: Int
    var distance: Double
    var heartRate: Double
    var activeBurnedEnergy: Double
    
    init(time: TimeInterval,
        steps: Int,
        distance: Double,
        heartRate: Double,
        activeBurnedEnergy: Double) {
        self.time = time
        self.steps = steps
        self.distance = distance
        self.heartRate = heartRate
        self.activeBurnedEnergy = activeBurnedEnergy
    }
    
    required init?(coder aDecoder: NSCoder) {
        time = aDecoder.decodeDouble(forKey: "time")
        heartRate = aDecoder.decodeDouble(forKey: "heartRate")
        steps = aDecoder.decodeInteger(forKey: "steps")
        distance = aDecoder.decodeDouble(forKey: "distance")
        activeBurnedEnergy = aDecoder.decodeDouble(forKey: "activeBurnedEnergy")
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(time, forKey: "time")
        aCoder.encode(heartRate, forKey: "heartRate")
        aCoder.encode(steps, forKey: "steps")
        aCoder.encode(distance, forKey: "distance")
        aCoder.encode(activeBurnedEnergy, forKey: "activeBurnedEnergy")
    }
}
