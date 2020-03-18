//
//  RootViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 02/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit
import HealthKit
import SVProgressHUD

class CarePlanStoreManager: NSObject {
    // MARK: Static Properties
    
    static var sharedCarePlanStoreManager = CarePlanStoreManager()
    
    // MARK: Properties
    
    weak var delegate: CarePlanStoreManagerDelegate?
    
    let store: OCKCarePlanStore
    let healthStore: HKHealthStore
    
    var insights: [OCKInsightItem] {
        return insightsBuilder.insights
    }
    
    fileprivate let insightsBuilder: InsightsBuilder
    fileprivate var isLoadingActivities = false
    
    // MARK: Initialization
    
    fileprivate override init() {
        // Determine the file URL for the store.
        let searchPaths = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)
        let applicationSupportPath = searchPaths[0]
        let persistenceDirectoryURL = URL(fileURLWithPath: applicationSupportPath)
        
        if !FileManager.default.fileExists(atPath: persistenceDirectoryURL.absoluteString, isDirectory: nil) {
            try! FileManager.default.createDirectory(at: persistenceDirectoryURL, withIntermediateDirectories: true, attributes: nil)
        }
        
        healthStore = HKHealthStore()
        
        // Create the store.
        store = OCKCarePlanStore(persistenceDirectoryURL: persistenceDirectoryURL)
        
        /*
         Create an `InsightsBuilder` to build insights based on the data in
         the store.
         */
        insightsBuilder = InsightsBuilder(carePlanStore: store)
        
        super.init()
        
        // Register this object as the store's delegate to be notified of changes.
        store.delegate = self
        
        DispatchQueue.main.async {
            guard AppDelegate.shared.isHealthKitFullyAuthorized(), User.isLoggedIn else { return }
        }
        
        // Start to build the initial array of insights.
        updateInsights()
        loadActivitiesIntoStore(showLoader: false)
    }
    
    func loadActivitiesIntoStore(showLoader: Bool = true, completion: ((Error?)->Void)? = nil) {
        guard !isLoadingActivities else { completion?(nil); return }
        isLoadingActivities = true
        
        DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            self.isLoadingActivities = false
        }
        
        if showLoader {
            DispatchQueue.main.async {
                SVProgressHUD.show()
            }
        }
        NetworkService.currentUserActivities { (activities, err) in
            guard err == nil else { completion?(err); return }
            self.removeAllActivites { [unowned self] in
                guard err == nil else {
                    return
                }
                self.notificationScheduled = false
                
                func stopLoading() {
                    DispatchQueue.main.async {
                        SVProgressHUD.dismiss()
                    }
                    self.isLoadingActivities = false
                }
                
                var done: [Bool] = []
                func checkDone() {
                    if done.count == activities.count {
                        stopLoading()
                        completion?(nil)
                    }
                }
                
                guard !activities.isEmpty else {
                    DispatchQueue.main.async {
                        RootViewController.shared.hideTodayButton()
                        stopLoading()
                        completion?(nil)
                    }
                    return
                }
                DispatchQueue.main.async {
                    RootViewController.shared.showTodayButton()
                }
                for sampleActivity in activities {
                    guard let carePlanActivity = sampleActivity.carePlanActivity else { continue }
                    let today = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: Date())
                    var startDate = carePlanActivity.schedule.startDate
                    var endDate = carePlanActivity.schedule.endDate
                    startDate.calendar = Calendar.current
                    endDate?.calendar = Calendar.current
                    
                    self.store.add(carePlanActivity) { success, error in
                        if !success {
                            print(error?.localizedDescription ?? "")
                        }
                        markEventsForActivity(sampleActivity)
                    }
                    
                    func markEventsForActivity(_ sampleActivity: Activity) {
                        self.store.enumerateEvents(of: carePlanActivity, startDate: startDate, endDate: today, handler: { (ockEvent, _) in
                            guard let ockEvent = ockEvent else { return }
                            for event in sampleActivity.events {
                                if event.numberOfDaysSinceStart == ockEvent.numberOfDaysSinceStart,
                                    event.occurrenceIndexOfDay == ockEvent.occurrenceIndexOfDay {
                                    
                                    self.store.update(ockEvent, with: nil, state: event.state, completion: { (_, _, err) in
                                        print(err?.localizedDescription ?? "")
                                    })
                                }
                            }
                        }, completion: { (success, err) in
                            done.append(success)
                            checkDone()
                            completion?(err)
                            self.scheduleNotificationIfIncompleteActivity(carePlanActivity)
                        })
                    }
                }
            }
        }
    }
    
    var notificationScheduled = false
    func scheduleNotificationIfIncompleteActivity(_ activity: OCKCarePlanActivity) {
        let now = Calendar.current.dateComponents([.year, .month, .day], from: Date())
        store.events(for: activity, date: now) { (events, _) in
            let shouldNotSchedule = events.map({$0.state == .completed}).reduce(true, {$0 && $1})
            if !shouldNotSchedule {
                NotificationsManager.shared.schedule(notification: .daily4Hours)
                self.notificationScheduled = true
            } else if !self.notificationScheduled {
                NotificationsManager.shared.remove(notification: .daily4Hours)
            }
        }
    }
    
    func removeAllActivites(completion: (()->Void)? = nil) {
        store.activities { (_, activities, err) in
            if activities.isEmpty{ completion?() }
            var done: [Bool] = []
            for act in activities {
                self.store.remove(act, completion: { (_, _) in
                    done.append(true)
                    if done.count == activities.count {
                        completion?()
                    }
                })
            }
            
        }
    }
    
    func updateEventState(_ event: OCKCarePlanEvent, state: OCKCarePlanEventState, maxHeartRate: Double, startDate: Date, endDate: Date, completion: @escaping ((Bool)->Void)) {
        //        let result = self.ockEventResult(forMaxHeartRate: maxHeartRate, startDate: startDate, endDate: endDate)
        self.store.update(event, with: nil, state: state) { (success, _, err) in
            print(err)
        }
    }
    
    func markWatchActivityCompleted(activityIdentifier id: String, eventDate: DateComponents, maxHeartRate: Double, startDate: Date, endDate: Date, attempt: Attempt, completion: @escaping ((Bool)->Void)) {
        store.activity(forIdentifier: id) { (success, activity, err) in
            guard success, let activity = activity else { completion(false); return }
            self.store.events(for: activity, date: eventDate, completion: { (events, err) in
                guard err == nil else { completion(false); return }
                var attemptPosted = false
                for event in events {
                    if event.state != .completed {
                        
                        //                        let result = self.ockEventResult(forMaxHeartRate: maxHeartRate, startDate: startDate, endDate: endDate)
                        var done: [Bool] = []
                        func checkDone() {
                            if done.count == 2 {
                                completion(done.reduce(true, {$0 && $1}))
                            }
                        }
                        
                        let state: OCKCarePlanEventState = attempt.completed ? .completed : .notCompleted
                        
                        self.store.update(event, with: nil, state: state, completion: { (success, _, err) in
                            done.append(success)
                            checkDone()
                        })
                        
//                        NetworkService.updateEvent(event, forActivity: activity!, withState: state, maxHeartRate: maxHeartRate, completion: { (success, err) in
//
//
//                        })
                        attemptPosted = true
                        NetworkService.createAttempt(attempt, forActivity: activity, withNumberOfDaysSinceStart: event.numberOfDaysSinceStart, andOccurrenceIndexOfDay: event.occurrenceIndexOfDay, completion: { (success, attemptId, err) in
                            if let err = err {
                                RootViewController.alert(title: "Error saving attempt", message: err.localizedDescription)
                            }
                            UserDefaults.standard.setAllWorkoutTargetsReached(attempt.allTargetsReached)
                            UserDefaults.standard.setPendingPainAssessment(forAttempWithId: attemptId)
                            UserDefaults.standard.setPendingWorkoutAssessment(forAttempWithId: attemptId)
                            self.startPainAssessmentIfNeeded()
                            done.append(success)
                            checkDone()
                        })
                        
                        break
                    }
                }
                
                if !attemptPosted {
                    NetworkService.createAttempt(attempt, forActivity: activity, withNumberOfDaysSinceStart: events.last?.numberOfDaysSinceStart ?? 0, andOccurrenceIndexOfDay: events.last?.occurrenceIndexOfDay ?? 0, completion: { (success, attemptId, err) in
                        if let err = err {
                            RootViewController.alert(title: "Error saving attempt", message: err.localizedDescription)
                        }
                        UserDefaults.standard.setAllWorkoutTargetsReached(attempt.allTargetsReached)
                        UserDefaults.standard.setPendingPainAssessment(forAttempWithId: attemptId)
                        UserDefaults.standard.setPendingWorkoutAssessment(forAttempWithId: attemptId)
                        self.startPainAssessmentIfNeeded()
                    })
                }
            })
        }
        
        NotificationsManager.shared.schedule(notification: .weekly)
    }
    
    func startPainAssessmentIfNeeded() {
        guard let topVC = UIApplication.topViewController() else { return }
        if UserDefaults.standard.isAllWorkoutTargetsReached() {
            let vc: GreatWorkoutViewController = GreatWorkoutViewController.instantiateFromStorybaord(R.storyboard.main())
            vc.didDismiss = { [weak self] in
                DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
                    self?.startPainAssessmentIfNeeded()
                }
            }
            topVC.present(vc, animated: false, completion: nil)
        } else if UserDefaults.standard.checkPainAssessment(), !(topVC is SurveyViewController) {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SurveyVC") as! SurveyViewController
            topVC.present(vc, animated: true, completion: nil)
        } else if UserDefaults.standard.checkWorkoutAssessment(), !(topVC is SurveyViewController) {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WorkoutSurveyVC") as! WorkoutSurveyViewController
            topVC.present(vc, animated: true, completion: nil)
        }
    }
    
    private func ockEventResult(forMaxHeartRate maxHeartRate: Double, startDate: Date, endDate: Date) -> OCKCarePlanEventResult {
        let unit = HKUnit.count().unitDivided(by: HKUnit.minute())
        let highestBeat = HKQuantitySample(type: HKQuantityType.quantityType(forIdentifier:
            HKQuantityTypeIdentifier.heartRate)!, quantity: HKQuantity(unit: unit, doubleValue: maxHeartRate), start: startDate, end: endDate)
        return OCKCarePlanEventResult(quantitySample: highestBeat, quantityStringFormatter: nil, unitStringKeys: [unit: "BPM"])
    }
    
    func checkLastActivity() {
        let sortDesc = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
        let query = HKSampleQuery(sampleType: .workoutType(), predicate: nil, limit: HKObjectQueryNoLimit, sortDescriptors: [sortDesc]) { (sampleQuert, samples, err) in
            guard err == nil else { print(err?.localizedDescription ?? ""); return }
            
            if let workout = samples?.last as? HKWorkout, let id = workout.metadata?["identifier"] as? String {
                self.store.activity(forIdentifier: id, completion: { (success, activity, err) in
                    if let activity = activity, let activityTaget = activity.userInfo?["activityTarget"] as? ActivityTarget, self.match(workout: workout, toTarget: activityTaget) {
                        print("activity \(id) doneeee")
                    }
                })
            }
        }
        healthStore.execute(query)
    }
    
    private func match(workout: HKWorkout, toTarget target: ActivityTarget) -> Bool {
        if workout.duration < target.time { return false }
        
        return true
    }
    
    func updateInsights() {
        insightsBuilder.updateInsights { [weak self] completed, newInsights in
            // If new insights have been created, notifiy the delegate.
            guard let storeManager = self, let newInsights = newInsights , completed else { return }
            storeManager.delegate?.carePlanStoreManager(storeManager, didUpdateInsights: newInsights)
        }
    }
    
//    func generateDocumentWith(chart: OCKChart?) -> OCKDocument {
//        
//        let intro = OCKDocumentElementParagraph(content: "I've been tracking my efforts to avoid becoming a Zombie with ZombieKit. Please check the attached report to see if you're safe around me.")
//        
//        var documentElements: [OCKDocumentElement] = [intro]
//        if let chart = chart {
//            documentElements.append(OCKDocumentElementChart(chart: chart))
//        }
//        
//        let document = OCKDocument(title: "Re: Your Brains", elements: documentElements)
//        document.pageHeader = "ZombieKit: Weekly Report"
//        
//        return document
//    }
}


extension CarePlanStoreManager: OCKCarePlanStoreDelegate {
    func carePlanStoreActivityListDidChange(_ store: OCKCarePlanStore) {
        updateInsights()
    }
    
    func carePlanStore(_ store: OCKCarePlanStore, didReceiveUpdateOf event: OCKCarePlanEvent) {
        updateInsights()
        
        let triggeredThresholds = event.evaluateNumericThresholds()
        if triggeredThresholds.count != 0 {
            for thresholdArray in triggeredThresholds {
                for threshold in thresholdArray {
                    NSLog("Threshold triggered on event \(event.occurrenceIndexOfDay) of \(event.date) for activity \(event.activity.identifier) with title:\n\(threshold.title ?? "")")
                }
            }
        }
        
    }
}


protocol CarePlanStoreManagerDelegate: class {
    
    func carePlanStoreManager(_ manager: CarePlanStoreManager, didUpdateInsights insights: [OCKInsightItem])
    
}
