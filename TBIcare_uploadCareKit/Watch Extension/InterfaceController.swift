//
//  InterfaceController.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 14/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import WatchKit
import HealthKit
import WatchConnectivity

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    @IBOutlet var loaderImage: WKInterfaceImage!
    @IBOutlet var loaderGroup: WKInterfaceGroup!
    @IBOutlet var loaderLabel: WKInterfaceLabel!
    
    let session = WCSession.default
    
    private var activities: [WorkoutActivity] = [] {
        didSet {
            DispatchQueue.main.async {
                self.updateTable()
            }
        }
    }
    private var sortedActivities: [WorkoutActivity] {
        return activities.sorted(by: { (work1, work2) -> Bool in
            return !work1.completed || work2.completed // Keep the same order unless work2 isn't completed and work1 is
        })
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        session.delegate = self
        session.activate()
        
        parseContext(context)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if session.activationState != .activated {
            session.activate()
        } else {
            loadData()
        }
    }
    
    func parseContext(_ context: Any?) {
        if let activityWorkoutContext = (context as? (Any,Any)) {
            if let workout = activityWorkoutContext.0 as? HKWorkout,
                let attempt = activityWorkoutContext.1 as? Attempt {
                saveWorkout(workout, attempt: attempt)
            }
        }
    }
    
    func didLosePhoneConnection() {
        guard session.activationState != .activated else {
            return
        }
        
        self.setTitle("")
        stopLoading()
        
        activities.removeAll()
        table.removeRows(at: IndexSet.init(integersIn: 0..<table.numberOfRows))
        table.setHidden(true)
        showMessage("Please connect to your iPhone")
    }
    
    func loadData() {
        setupLoader()
        table.removeRows(at: IndexSet.init(integersIn: 0..<table.numberOfRows))
        loadActivityList()
    }
    
    func setupLoader() {
        table.setHidden(true)
        startLoading()
    }
    
    @objc func loadActivityList() {
        if session.activationState == .activated {
            let data = NSMutableData()
            NSKeyedArchiver.setClassName("ActivityTarget", for: ActivityTarget.self)
            let encoder = NSKeyedArchiver(forWritingWith: data)
            encoder.encode("getAllData", forKey: "type")
            encoder.finishEncoding()
            session.sendMessageData(data as Data, replyHandler: {(data) in
                
                NSKeyedUnarchiver.setClass(ActivityTarget.self, forClassName: "ActivityTarget")
                let decoder = NSKeyedUnarchiver(forReadingWith: data)
                defer {
                    decoder.finishDecoding()
                }
                if let error = (try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any])?["error"] as? String {
                    
                    if let watchError = WatchManagerError(rawValue: error) {
                        self.showMessage(watchError.message)
                        return
                    }
                    
                    self.showMessage("An error occured while connecting to your iPhone")
                    return
                }
                
                let type = decoder.decodeObject(forKey: "type") as! String
                guard type == "allData" else {
                    NSLog("Bad message recieved")
                    return
                }
                
//                if self.activities.isEmpty {
                    self.loadAllData(fromData: decoder, isFullData: false)
//                }
                
            }, errorHandler: { err in
                print(err)
            })
        } else {
            didLosePhoneConnection()
        }
    }
    
    func loadAllData(fromData decoder: NSKeyedUnarchiver, isFullData : Bool) {
        var newActivities = [WorkoutActivity]()
        
        let activitiesArray = decoder.decodeObject(forKey: "activities") as! [[String : AnyObject]]
        let masterEventsArray = decoder.decodeObject(forKey: "events") as! [String : [[String : AnyObject]]]
        for activityDictionary in activitiesArray {
            let activity = WorkoutActivity(dictionary: activityDictionary)!
            for event in masterEventsArray[activity.identifier] ?? [] {
                activity.eventsForToday.append(WorkoutEvent(dictionary: event))
            }
            newActivities.append(activity)
        }
        
        activities = newActivities
        
//        for (activityIdentifier, eventActivityGroup) in masterEventsArray {
        
//            if newActivities.contains(activityIdentifier) {
//                for eventDictionary in eventActivityGroup {
//                    _ = self.loadEvent(fromDictionary: eventDictionary, updateDisplay: false)
//                }
//            }
//        }
        
//        for newIdentifier in newActivities {
//            if (self.activities[newIdentifier]!.type == .intervention) {
//                appendActivityToTable(self.activities[newIdentifier]!)
//            }
//        }
    }
    
    /// Updating all contents of WKInterfaceTable
    func updateTable() {
        table.setHidden(activities.count == 0)
        table.setNumberOfRows(activities.count, withRowType: "Row")
        stopLoading()
        for (i, item) in sortedActivities.enumerated() {
            if let row = table.rowController(at: i) as? Row {
                let isCompleted = item.completed || item.eventsCompleted
                row.lbl.setText(item.title)
//                row.lbl.setTextColor(isCompleted ? UIColor.white.withAlphaComponent(0.4) : UIColor.white)
                row.desc.setText(item.text)
//                row.desc.setTextColor(isCompleted ? UIColor.white.withAlphaComponent(0.4) : UIColor.white)
                row.completed.setHidden(!isCompleted)
            }
        }
        
        if self.activities.isEmpty {
            self.showMessage("You're done for today")
        }
    }
    
    func showMessage(_ text: String) {
        loaderGroup.setHidden(false)
        loaderImage.setHidden(true)
        loaderLabel.setText(text)
    }
    
    func startLoading() {
        loaderImage.setImageNamed("Activity")
        loaderImage.startAnimatingWithImages(in: NSMakeRange(1, 15), duration: 1.5, repeatCount: 0)
        loaderLabel.setText("Loading..")
        loaderGroup.setHidden(false)
        loaderImage.setHidden(false)
    }
    
    func stopLoading() {
        loaderImage.stopAnimating()
        loaderGroup.setHidden(true)
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        let workoutActivity = sortedActivities[rowIndex]
        print(workoutActivity.workoutType)
        
//        guard !workoutActivity.completed && !workoutActivity.eventsCompleted else { return }
        
        let workoutConfiguration = HKWorkoutConfiguration()
        workoutConfiguration.activityType = workoutActivity.workoutType
        workoutConfiguration.locationType = workoutActivity.locationType
        
        WKInterfaceController.reloadRootControllers(withNames: ["ActivityController", "ActivityActionsController"],
                                                    contexts: [["workoutConfiguration":workoutConfiguration,
                                                                "workoutActivity": workoutActivity]])
        
    }
    
    func saveWorkout(_ workout: HKWorkout, attempt: Attempt) {
        setupLoader()
        print("attempting to save attempt: \(attempt)")
        session.sendMessage(["message": WatchMessage.activityFinished.rawValue,
                             "wourkoutIdentifer":workout.metadata?["identifier"] as? String ?? "",
                             "wourkoutStartDate":workout.metadata?["startDate"] as? Date ?? Date(),
                             "wourkoutEndDate":workout.metadata?["endDate"] as? Date ?? Date(),
                             "heartRates":attempt.heartRates.toDictionaryArray,
                             "steps":attempt.steps ?? 0,
                             "distance":attempt.distance ?? 0,
                             "time":attempt.time,
                             "activeBurnedEnergy":attempt.activeBurnedEnergy ?? 0,
                             "vo2Max":attempt.vo2Max,
                             "heartRateVariability": attempt.heartRateVariability,
                             "completed":attempt.completed,
                             "allTargetsReached":attempt.allTargetsReached],
                            replyHandler: { (replyDict) in
                                DispatchQueue.main.async {
                                    if replyDict["success"] as? Bool == false {
                                        self.alertUserForFailedEventUpdate()
                                    } else {
                                        self.loadData()
                                    }
                                }
        }) { (err) in
            print(err)
        }
    }
    
    func alertUserForFailedEventUpdate() {
        presentAlert(withTitle: "Lost Connection", message: "Event could not be updated", preferredStyle: .alert, actions: [WKAlertAction(title: "Dismiss", style: .default, handler: {})])
    }

    var counter = 0
}

extension InterfaceController: WCSessionDelegate {
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if activationState == .activated {
            loadData()
        } else {
            didLosePhoneConnection()
        }
    }
    
    func session(_ session: WCSession, didReceiveMessageData messageData: Data) {
        let decoder = NSKeyedUnarchiver(forReadingWith: messageData)
        defer {
            decoder.finishDecoding()
        }
        
        let type = decoder.decodeObject(forKey: "type") as! String
        
        switch type {
            
        case "allData":
            counter += 1
            print("counter: \(counter)")
            self.loadAllData(fromData: decoder, isFullData: true)
            
        default:
            NSLog("Invalid message data type recieved")
        }
    }
}
