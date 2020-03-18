//
//  ActivityController+Workout.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 18/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import WatchKit
import HealthKit

extension ActivityController: HKWorkoutSessionDelegate {
    
    func setupWorkoutSession(withContext context: Any?) {
        guard let dict = context as? [String: Any] else { return }
        if let workoutConfiguration = dict["workoutConfiguration"] as? HKWorkoutConfiguration {
            do {
                workoutSession = try HKWorkoutSession(configuration: workoutConfiguration)
                workoutSession?.delegate = self
                
                workoutStartDate = Date()
                timerLabel.start()
                
                healthStore.start(workoutSession!)
            } catch {
                print(error)
            }
        }
        if let workoutActivity = dict["workoutActivity"] as? WorkoutActivity {
            self.workoutActivity = workoutActivity
            setupTargetLabels(fromWorkoutActivity: workoutActivity)
        }
    }
    
    func setupTargetLabels(fromWorkoutActivity wa: WorkoutActivity) {
        guard let target = wa.activityTarget else { return }
        setupTimerTarget(targetInterval: target.time, targetHeartRate: Int(target.heartRate))
        targetHeartRate.setText("\(Int(target.heartRate))")
//        targetCaloriesLabel.setText("\(Int(target.activeBurnedEnergy))")
        targetDistanceLabel.setText("\(target.distance)")
        
        targetHeartRate.setHidden(target.heartRate == 0)
        targetTimeLabel.setHidden(target.time == 0)
//        caloriesGroup.setHidden(target.steps == 0)
        distanceGroup.setHidden(target.distance == 0)
    }
    
    func setupTimerTarget(targetInterval: TimeInterval, targetHeartRate: Int) {
        targetTimeLabel.setDate(Date(timeIntervalSinceNow: targetInterval+1))
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [unowned self] (timer) in
            guard !self.isPaused else { return }
            self.currentTime += 1
            if TimeInterval(self.currentTime) >= targetInterval {
                self.targetReached(for: .time)
            }
            if TimeInterval(self.currentTime) >= (targetInterval * 1.1) {
                self.remindToEndWorkout()
            }
            if self.currentTime - self.lastBelowHeartRateTargetMark >= 60*5, let lastBeat = self.heartBeats().last?.value, Int(lastBeat) < targetHeartRate {
                self.lastBelowHeartRateTargetMark = self.currentTime
                self.playHeartBeatAlert(times: 5)
            }
        })
    }
    
    func workoutSession(_ workoutSession: HKWorkoutSession, didChangeTo toState: HKWorkoutSessionState, from fromState: HKWorkoutSessionState, date: Date) {
        switch toState {
        case .running:
            if fromState == .notStarted {
                startAccumulatingData(startDate: workoutStartDate!)
            } else {
                resumeAccumulatingData()
            }
            notifyEvent(.start)
        case .paused:
            pauseAccumulatingData()
            break
            
        case .ended:
            stopAccumulatingData()
            saveWorkout()
            notifyEvent(.stop)
        default:
            break
        }
        
        DispatchQueue.main.async {
            self.updateLabels()
            self.updateState()
        }
    }
    
    func workoutSession(_ workoutSession: HKWorkoutSession, didFailWithError error: Error) {
        print("workout session did fail with error: \(error)")
    }
    
    func workoutSession(_ workoutSession: HKWorkoutSession, didGenerate event: HKWorkoutEvent) {
        workoutEvents.append(event)
    }
    
    func saveWorkout() {
        // Create and save a workout sample
        let configuration = workoutSession!.workoutConfiguration
        print("locationType: \(configuration)")
        
        
        let workout = HKWorkout(activityType: configuration.activityType,
                               start: workoutStartDate!,
                               end: workoutEndDate!,
                               duration: TimeInterval(currentTime),
                               totalEnergyBurned: nil,
                               totalDistance: totalDistance,
                               metadata: ["identifier":workoutActivity?.identifier ?? ""])
        
        healthStore.save(workout) { success, _ in
            if success {
                self.addSamples(toWorkout: workout)
            }
        }
    }
    
    private func addSamples(toWorkout workout: HKWorkout) {
        // Create energy and distance samples
        let totalStepsSample = HKQuantitySample(type: HKQuantityType.quantityType(forIdentifier:
            HKQuantityTypeIdentifier.stepCount)!,
                                                quantity: totalSteps,
                                                start: workoutStartDate!,
                                                end: workoutEndDate!)
        
        let totalDistanceSample = HKQuantitySample(type: HKQuantityType.quantityType(forIdentifier:
            HKQuantityTypeIdentifier.distanceWalkingRunning)!,
                                                   quantity: totalDistance,
                                                   start: workoutStartDate!,
                                                   end: workoutEndDate!)
        
//        let highestBeat = HKQuantitySample(type: HKQuantityType.quantityType(forIdentifier:
//                                                 HKQuantityTypeIdentifier.heartRate)!,
//                                           quantity: maxHeartRate,
//                                           start: workoutStartDate!,
//                                           end: workoutEndDate!)
        
        // Add samples to workout
        healthStore.add([totalStepsSample, totalDistanceSample], to: workout) { (success: Bool, error: Error?) in
            if success {
                // Samples have been added
            }
            // Pass the workout to Summary Interface Controller
            DispatchQueue.main.async {
                var attempt = Attempt(time: TimeInterval(self.currentTime),
                                      heartRates: self.heartBeats(),
                                      steps: Int(self.totalStepsCount()),
                                      distance: self.totalMeters(),
                                      activeBurnedEnergy: self.totalActiveEnergyBurnedValue(),
                                      vo2Max: self.vo2MaxValuesDouble(),
                                      heartRateVariability: self.heartRateVariabilityValuesDouble(),
                                      completed: TimeInterval(self.currentTime) >= self.workoutActivity?.activityTarget?.time ?? 0,
                                      activityName: nil)
                if let targets = self.workoutActivity?.activityTarget {
                    attempt.setAllTargetsReached(targets: targets)
                }
                
                WKInterfaceController.reloadRootControllers(withNames: ["CompleteSurveyInterfaceController"], contexts: [(workout, attempt)])
            }
        }
    }
    
}
