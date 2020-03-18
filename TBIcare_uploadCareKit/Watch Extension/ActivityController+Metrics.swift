//
//  ActivityController+Metrics.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 16/10/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import HealthKit

extension ActivityController {
    
    // MARK: Totals
    
    func totalStepsCount() -> Double {
        return totalSteps.doubleValue(for: HKUnit.count())
    }
    
    func totalMeters() -> Double {
        return totalDistance.doubleValue(for: distanceUnit)
    }
    
    func heartBeats() -> [HeartRateRecord] {
        return heartRateBeats.map({HeartRateRecord(value: $0.0.doubleValue(for: heartRateUnit), recordedAt: $0.1)})
    }
    
    func totalActiveEnergyBurnedValue() -> Double {
        let total = totalActiveEnergyBurned.doubleValue(for: activeEnergyBurnedUnit)
        print("3 activeBurnedEnergy: \(total)")
        return total
    }
    
    func vo2MaxValuesDouble() -> [Double] {
        return vo2MaxValues.map({$0.doubleValue(for: vo2MaxUnit)})
    }
    
    func heartRateVariabilityValuesDouble() -> [Double] {
        return heartRateVariabilityValues.map({$0.doubleValue(for: heartRateVariabilityUnit)})
    }
    
    func setTotalSteps(steps: Double) {
        totalSteps = HKQuantity(unit: HKUnit.count(), doubleValue: steps)
    }
    
    func setTotalMeters(meters: Double) {
        totalDistance = HKQuantity(unit: distanceUnit, doubleValue: meters)
        if totalMeters() >= workoutActivity?.activityTarget?.distance ?? 0.0 {
            targetReached(for: .distance)
        }
    }
    
    func setNewHearRateBeats(newBeats: Double) {
        heartRateBeats.append((HKQuantity(unit: heartRateUnit, doubleValue: newBeats), Date()))
        if didJustReachecedHeartRateTarget() {
            reachedAboveHeartRate()
        } else if didJustWentBelowHeartRateTarget() {
            wentBelowHeartRate()
        }
    }
    
    func setTotalActiveEnergyBurned(newEnergy: Double) {
        totalActiveEnergyBurned = HKQuantity(unit: activeEnergyBurnedUnit, doubleValue: newEnergy)
        if totalActiveEnergyBurnedValue() >= workoutActivity?.activityTarget?.activeBurnedEnergy ?? 0 {
            targetReached(for: .calories)
        }
    }
    
    func setNewVO2MaxValue(newValue: Double) {
        vo2MaxValues.append(HKQuantity(unit: vo2MaxUnit, doubleValue: newValue))
    }
    
    func setNewHeartRateVariabilityValue(newValue: Double) {
        heartRateVariabilityValues.append(HKQuantity(unit: heartRateVariabilityUnit, doubleValue: newValue))
    }
    
}
