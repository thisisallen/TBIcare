//
//  ActivityController.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 14/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import WatchKit
import Foundation
import HealthKit

enum MetricType {
    case time, calories, distance, heartRate
}

class ActivityController: WKInterfaceController {
    
    let heartRateUnit = HKUnit.count().unitDivided(by: HKUnit.minute())
    let activeEnergyBurnedUnit = HKUnit.kilocalorie()
    let vo2MaxUnit = HKUnit(from: "ml/kg*min")
    let heartRateVariabilityUnit = HKUnit.secondUnit(with: .milli)
    let distanceUnit = HKUnit.mile()
    
    let healthStore = HKHealthStore()
    
    var workoutSession : HKWorkoutSession?
    
    var activeDataQueries = [HKQuery]()
    
    var workoutStartDate : Date?
    
    var workoutEndDate : Date?
    
    var workoutTime: TimeInterval? {
        guard let end = workoutEndDate?.timeIntervalSince1970, let start = workoutStartDate?.timeIntervalSince1970 else { return nil}
        return end - start
    }
    
    var totalSteps = HKQuantity(unit: HKUnit.count(), doubleValue: 0)
    
    lazy var totalDistance = HKQuantity(unit: distanceUnit, doubleValue: 0)
    
    var heartRateBeats: [(HKQuantity, Date)] = []
    var heartRateBeatsValues: [HKQuantity] {
        return heartRateBeats.map { $0.0 }
    }
//    var maxHeartRate: HKQuantity {
//        return heartRateBeats.max(by: {$0.doubleValue(for: heartRateUnit) < $1.doubleValue(for: heartRateUnit)}) ?? HKQuantity(unit: heartRateUnit, doubleValue: 0)
//    }
    
    lazy var totalActiveEnergyBurned = HKQuantity(unit: activeEnergyBurnedUnit, doubleValue: 0)
    
    var vo2MaxValues: [HKQuantity] = []
    
    var heartRateVariabilityValues: [HKQuantity] = []
    //HKQuantity(unit: HKUnit.count().unitDivided(by: HKUnit.minute()), doubleValue: 0)
    
    var workoutEvents = [HKWorkoutEvent]()
    
    var metadata = [String: AnyObject]()
    
    var workoutActivity: WorkoutActivity?
    
    var timer : Timer?
    var lastBelowHeartRateTargetMark: Int = 0
    var currentTime: Int = 0
    
    var isPaused = false
    
    var isTargetTimeReached = false
    var isTargetCaloriesReached = false
    var isTargetMetersReached = false
    var isTargetHeartBeatsReached = false
    
    private var didRemindToEndWorkout = false
    
    // MARK: IBOutlets
    
    @IBOutlet weak var timeGroup: WKInterfaceGroup!
    @IBOutlet weak var targetTimeLabel: WKInterfaceTimer!
    @IBOutlet weak var timerLabel: WKInterfaceTimer!
    @IBOutlet weak var checkTargetTime: WKInterfaceImage!
    
//    @IBOutlet weak var caloriesGroup: WKInterfaceGroup!
//    @IBOutlet weak var targetCaloriesLabel: WKInterfaceLabel!
//    @IBOutlet weak var caloriesLabel: WKInterfaceLabel!
//    @IBOutlet weak var checkTargetCalories: WKInterfaceImage!
    
    @IBOutlet weak var distanceGroup: WKInterfaceGroup!
    @IBOutlet weak var targetDistanceLabel: WKInterfaceLabel!
    @IBOutlet weak var distanceLabel: WKInterfaceLabel!
    @IBOutlet weak var checkTargetDistance: WKInterfaceImage!
    
    @IBOutlet weak var heartBeatsGroup: WKInterfaceGroup!
    @IBOutlet weak var targetHeartRate: WKInterfaceLabel!
    @IBOutlet weak var heartRateLabel: WKInterfaceLabel!
    @IBOutlet weak var checkTargetHeartRate: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        authorizeHealthKit { [weak self] (success) in
            DispatchQueue.main.async {
                guard success else {
                    self?.pop()
                    return
                }
                self?.setupWorkoutSession(withContext: context)
            }
        }
//        checkTargetCalories.setHidden(true)
        checkTargetDistance.setHidden(true)
        checkTargetTime.setHidden(true)
        checkTargetHeartRate.setHidden(true)
        
        NotificationCenter.default.addObserver(self, selector: #selector(pauseNotification), name: .pauseWorkout, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(resumeNotification), name: .resumeWorkout, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(stopNotification), name: .stopWorkout, object: nil)
        
        // Override and hide calories
//        caloriesGroup.setHidden(true)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    @objc func pauseNotification() {
        healthStore.pause(workoutSession!)
    }
    
    @objc func resumeNotification() {
        healthStore.resumeWorkoutSession(workoutSession!)
    }
    
    @objc func stopNotification() {
        becomeCurrentPage()
        stopActivity()
    }
    
    func stopActivity() {
        workoutEndDate = Date()
        timerLabel.stop()
        healthStore.end(workoutSession!)
        
//        WatchLightSessionManager.shared.sendMessage([
//            WatchMessage.activityIdentifier.rawValue: workoutSession?.value(forKey: "identifier") ?? "",
//            WatchMessage.activityDistance.rawValue: totalMeters(),
//            WatchMessage.activityTime.rawValue: workoutTime ?? 0.0,
//            WatchMessage.activitySteps.rawValue: totalStepsCount(),
//            WatchMessage.activityHeartRate.rawValue: heartBeats()
//            ])
    }
    
    // MARK: Updates
    
    func updateLabels() {
//        caloriesLabel.setText(format(energy: totalActiveEnergyBurned))
        distanceLabel.setText(format(distance: totalDistance))
        heartRateLabel.setText(format(beats: heartRateBeats.last?.0))
    }
    
    func targetReached(for metric: MetricType) {
        switch metric {
        case .time:
            guard !isTargetTimeReached else { return }
            checkTargetTime.setHidden(false)
            targetTimeLabel.setHidden(true)
            notifyEvent(.success)
            isTargetTimeReached = true
        case .distance:
            checkTargetDistance.setHidden(false)
            targetDistanceLabel.setHidden(true)
            isTargetMetersReached = true
        case .calories:
//            checkTargetCalories.setHidden(false)
//            targetCaloriesLabel.setHidden(true)
//            isTargetCaloriesReached = true
            break
        case .heartRate:
            checkTargetHeartRate.setHidden(false)
            targetHeartRate.setHidden(true)
            notifyEvent(.directionUp)
            playHeartBeatAlert(times: 2, playFailureSound: false)
            isTargetHeartBeatsReached = true
        }
    }
    
    func remindToEndWorkout() {
        if !didRemindToEndWorkout {
            didRemindToEndWorkout = true
            WatchNotificationsManager.shared.schedule(notification: .workoutRunning)
        }
    }
    
    func updateState() {
        if let session = workoutSession {
            switch session.state {
            case .running:
                setTitle("Active")
            case .paused:
                setTitle("Paused")
            case .notStarted, .ended:
                setTitle("Workout")
            case .prepared:
                break
            case .stopped:
                break
            @unknown default:
                break
            }
        }
    }
    
    func notifyEvent(_ event: WKHapticType) {
        WKInterfaceDevice.current().play(event)
        
    }
    
    func playHeartBeatAlert(times: Int, playFailureSound: Bool = true, completion: (()->Void)? = nil) {
        guard times > 0 else {
            completion?()
            return
        }
        
        if playFailureSound {
            notifyEvent(.failure)
        }
        
        animate(withDuration: 0.5) {
            self.heartBeatsGroup.setAlpha(0)
            self.heartRateLabel.setAlpha(0)
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            self.animate(withDuration: 0.5) {
                self.heartBeatsGroup.setAlpha(1)
                self.heartRateLabel.setAlpha(1)
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                self.playHeartBeatAlert(times: times-1, playFailureSound: false, completion: completion)
            }
        }
    }
    
    func playSound() {
        //        let soundPath = Bundle.main.path(forResource: "ding", ofType: "mp3")
        //        let soundPathURL = URL(fileURLWithPath: soundPath!)
        //        let audioFile = WKAudioFileAsset(url: soundPathURL)
        //        let audioItem = WKAudioFilePlayerItem(asset: audioFile)
        //
        //        let audioPlayer = WKAudioFilePlayer.init(playerItem: audioItem)
        //
        //        if audioPlayer.status == .readyToPlay {
        //          audioPlayer.play()
        //        }
    }
    
    func didJustReachecedHeartRateTarget() -> Bool {
        let beats = heartBeats()
        if let lastBeat = beats.last?.value, let target = workoutActivity?.activityTarget?.heartRate, lastBeat >= target {
            guard beats.count > 1 else { return true }
            let secondLastBeat = beats[beats.count-2].value
            
            return secondLastBeat < target
        }
        return false
    }
    
    func didJustWentBelowHeartRateTarget() -> Bool {
        let beats = heartBeats()
        guard beats.count > 1 else { return false }
        if let lastBeat = beats.last?.value, let target = workoutActivity?.activityTarget?.heartRate {
            let secondLastBeat = beats[beats.count-2].value
            
            return secondLastBeat >= target && lastBeat < target
        }
        return false
    }
    
    // MARK: - Heart rate triggers
    
    func reachedAboveHeartRate() {
        targetReached(for: .heartRate)
    }
    
    func wentBelowHeartRate() {
        self.lastBelowHeartRateTargetMark = self.currentTime
    }
    
    
    
}
