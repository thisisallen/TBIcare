//
//  WatchManager.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 22/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit
import WatchConnectivity

class WatchConnectivityManager : NSObject {
    
    // MARK: Properties
    var store : OCKCarePlanStore
    var session : WCSession
    
    var eventUpdatesFromWatch = [String]()
    
    // MARK: Initialization
    
    init(withStore store : OCKCarePlanStore) {
        self.store = store
        self.session = WCSession.default
        
        super.init()
        
        session.delegate = self
        
        if (WCSession.isSupported()) {
            session.activate()
        }
    }
}

// MARK: Outgoing messages

extension WatchConnectivityManager : OCKCarePlanStoreDelegate {
    
    func carePlanStore(_ store: OCKCarePlanStore, didReceiveUpdateOf event: OCKCarePlanEvent) {
        
        let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        
        let today = calendar.dateComponents([.day, .month, .year, .era], from: Date())
        let eventIsToday = (today.day == event.date.day && today.month == event.date.month && today.year == event.date.year && today.era == event.date.era)
        
        let eventUpdateString = hashEventUpdate(event.activity.identifier, eventIndex: event.occurrenceIndexOfDay, state: event.state)
        if let hashIndex = eventUpdatesFromWatch.index(of: eventUpdateString) {
            eventUpdatesFromWatch.remove(at: hashIndex)
            
            return
        }
        
        if eventIsToday {
            
            weak var weakSelf = self
            self.store.events(onDate: today, type: .intervention, completion: { (allInterventionsArray, errorOrNil) in
                let interventionsCompleted = allInterventionsArray.map({$0.filter({$0.state == OCKCarePlanEventState.completed && !$0.activity.optional}).count}).reduce(0, +)
                let totalInterventions = allInterventionsArray.map({$0.filter({!$0.activity.optional}).count}).reduce(0, +)
                
                if let strongSelf = weakSelf {
                    strongSelf.store.events(onDate: today, type: .assessment, completion: { (allAssessmentsArray, errorOrNil) in
                        let assessmentsCompleted = allAssessmentsArray.map({$0.filter({$0.state == OCKCarePlanEventState.completed && !$0.activity.optional}).count}).reduce(0, +)
                        let totalAssessments = allAssessmentsArray.map({$0.filter({!$0.activity.optional}).count}).reduce(0, +)
                        let eventsCompleted = interventionsCompleted + assessmentsCompleted
                        let totalEvents = totalInterventions + totalAssessments
//                        let completionPercentage = round(Float(eventsCompleted) * 100.0 / Float(totalEvents))
                        if strongSelf.session.isReachable {
                            let data = NSMutableData()
                            NSKeyedArchiver.setClassName("ActivityTarget", for: ActivityTarget.self)
                            let encoder = NSKeyedArchiver(forWritingWith: data)
                            
                            encoder.encode("updateEvent", forKey: "type")
                            encoder.encode(strongSelf.parseEventToDictionary(event), forKey: "event")
//                            encoder.encode(Int64(completionPercentage), forKey: "currentCompletionPercentage")
                            
                            encoder.finishEncoding()
                            strongSelf.session.sendMessageData(data as Data, replyHandler: nil, errorHandler: nil)
                        }
                    })
                }
            })
        }
    }
    
    func carePlanStoreActivityListDidChange(_ store: OCKCarePlanStore) {
        if session.isReachable == true {
            // Only update watch if the watch app is reachable ("paired and active Apple Watch is in range and the associated Watch app is running in the foreground")
//            parseEntireStore({_ in })
        } else {
            // If not reachable, send background user info to update complications
            let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
            let today = calendar.dateComponents([.day, .month, .year, .era], from: Date())
            
            weak var weakSelf = self
            self.store.events(onDate: today, type: .intervention, completion: { (allInterventionsArray, errorOrNil) in
                let interventionsCompleted = allInterventionsArray.map({$0.filter({$0.state == OCKCarePlanEventState.completed && !$0.activity.optional}).count}).reduce(0, +)
                let totalInterventions = allInterventionsArray.map({$0.filter({!$0.activity.optional}).count}).reduce(0, +)
                
                if let strongSelf = weakSelf {
                    strongSelf.store.events(onDate: today, type: .assessment, completion: { (allAssessmentsArray, errorOrNil) in
                        let assessmentsCompleted = allAssessmentsArray.map({$0.filter({$0.state == OCKCarePlanEventState.completed && !$0.activity.optional}).count}).reduce(0, +)
                        let totalAssessments = allAssessmentsArray.map({$0.filter({!$0.activity.optional}).count}).reduce(0, +)
                        let eventsCompleted = interventionsCompleted + assessmentsCompleted
                        let totalEvents = totalInterventions + totalAssessments
                        let completionPercentage = round(Float(eventsCompleted) * 100.0 / Float(totalEvents))
                        
                    })
                }
            })
        }
    }
    
    // transfer glyph type and tint color
    func sendGlyphType(glyphType: String, glyphTintColor: [CGFloat]) {
        
        if self.session.isReachable {
            let data = NSMutableData()
            let encoder = NSKeyedArchiver(forWritingWith: data)
            
            encoder.encode(glyphType, forKey: "glyphType")
            encoder.finishEncoding()
            
            self.session.sendMessageData(data as Data, replyHandler: nil, errorHandler: nil)
        } else {
            self.session.transferCurrentComplicationUserInfo(["glyphType" : glyphType, "glyphTintColor" : glyphTintColor])
            try? self.session.updateApplicationContext(["glyphType" : glyphType])
        }
    }
    
    // transfer glyph type, tint color and image it is a custom glyph image type
    func sendGlyphType(glyphType: String, glyphTintColor: [CGFloat], glyphImageName: String) {
        
        if self.session.isReachable {
            let data = NSMutableData()
            let encoder = NSKeyedArchiver(forWritingWith: data)
            
            encoder.encode(glyphType, forKey: "glyphType")
            encoder.finishEncoding()
            
            self.session.sendMessageData(data as Data, replyHandler: nil, errorHandler: nil)
        } else {
            self.session.transferCurrentComplicationUserInfo(["glyphType" : glyphType,
                                                              "glyphTintColor" : glyphTintColor,
                                                              "glyphImageName" : glyphImageName])
            try? self.session.updateApplicationContext(["glyphType" : glyphType])
        }
    }
}

// MARK: Incoming messages

extension WatchConnectivityManager : WCSessionDelegate {
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if activationState == .activated {
            store.watchDelegate = self
        } else {
            store.watchDelegate = nil
        }
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        WCSession.default.activate()
    }
    
    func session(_ session: WCSession, didReceiveMessageData messageData: Data, replyHandler: @escaping (Data) -> Void) {
        NSKeyedUnarchiver.setClass(ActivityTarget.self, forClassName: "ActivityTarget")
        
        let decoder = NSKeyedUnarchiver(forReadingWith: messageData)
        defer {
            decoder.finishDecoding()
        }
        
        let type = decoder.decodeObject(forKey: "type") as! String
        
        switch type {
        case "getAllData":
            guard User.isLoggedIn else {
                replyHandler(["error": WatchManagerError.notLoggedIn.rawValue].jsonData()!)
                return
            }
            CarePlanStoreManager.sharedCarePlanStoreManager.loadActivitiesIntoStore { err in
                guard err == nil else {
                    replyHandler(["error": WatchManagerError.unableToLoadActivities.rawValue].jsonData()!)
                    return
                }
                self.parseEntireStore({ (storeDictionary) in
                    print("parseEntireStore response")
                    replyHandler(storeDictionary)
                })
            }
            
        case "updateEventState":
            let activityIdentifier = decoder.decodeObject(forKey: "activityIdentifier") as! String
            let eventIndex = UInt(decoder.decodeInt64(forKey: "eventIndex"))
            let completed = decoder.decodeBool(forKey: "completedState")
            
            var updatedEvent : OCKCarePlanEvent?
            
            let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
            
            let today = calendar.dateComponents([.day, .month, .year, .era], from: Date())
            
            store.events(onDate: today, type: .intervention, completion: { (allEventsArray, errorOrNil) in
                for activityGroup in allEventsArray {
                    if !activityGroup.isEmpty && activityGroup[0].activity.identifier == activityIdentifier {
                        for event in activityGroup {
                            if event.occurrenceIndexOfDay == eventIndex {
                                updatedEvent = event
                                break
                            }
                        }
                    }
                }
                
                guard let newEvent = updatedEvent else {
                    self.parseEntireStore({ _ in })
                    return
                }
                
                self.store.update(newEvent,
                                  with: nil,
                                  state: completed ? .completed : .notCompleted,
                                  completion: { (success, event, errorOrNil) in
                                    let replyData = NSMutableData()
                                    NSKeyedArchiver.setClassName("ActivityTarget", for: ActivityTarget.self)
                                    let encoder = NSKeyedArchiver(forWritingWith: replyData)
                                    encoder.encode("updateEventResponse", forKey: "type")
                                    encoder.encode(success, forKey: "success")
                                    
                                    encoder.finishEncoding()
                                    replyHandler(replyData as Data)
                                    if success {
                                        self.eventUpdatesFromWatch.append(self.hashEventUpdate(activityIdentifier, eventIndex: eventIndex, state: completed ? .completed : .notCompleted))
                                    }
                })
            })
            
        default:
            replyHandler(Data())
        }
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print(message)
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
        print("didReceiveMessage \(message)")
        if message["message"] != nil, let messageType = WatchMessage(rawValue: message["message"] as! String) {
            switch messageType {
            case .activityFinished:
                guard let id = message["wourkoutIdentifer"] as? String,
                    let startDate = message["wourkoutStartDate"] as? Date,
                    let endDate = message["wourkoutEndDate"] as? Date,
                    let heartRates = message["heartRates"] as? [[String: Any]],
                    let time = message["time"] as? TimeInterval,
                    let completed = message["completed"] as? Bool else {
                        replyHandler(["success":false]); return
                }
                
                let maxHeartRate = message["wourkoutMaxHeartRate"] as? Double ?? 0
                let steps = message["steps"] as? Int
                let distance = message["distance"] as? Double
                let activeBurnedEnergy = message["activeBurnedEnergy"] as? Double
                let vo2Max = message["vo2Max"] as? [Double] ?? []
                let heartRateVariability = message["heartRateVariability"] as? [Double] ?? []
                let allTargetsReached = message["allTargetsReached"] as? Bool ?? false
                let heartRateRecords: [HeartRateRecord] = heartRates.map({ HeartRateRecord(dictionary: $0) }).compactMap({ $0 })
                let attempt = Attempt(time: time, heartRates: heartRateRecords, steps: steps, distance: distance, activeBurnedEnergy: activeBurnedEnergy, vo2Max: vo2Max, heartRateVariability: heartRateVariability, completed: completed, activityName: message["activityName"] as? String, allTargetsReached: allTargetsReached)
                let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: startDate)
                CarePlanStoreManager.sharedCarePlanStoreManager.markWatchActivityCompleted(activityIdentifier: id, eventDate: components, maxHeartRate: maxHeartRate, startDate: startDate, endDate: endDate, attempt: attempt) { success in
                    replyHandler(["success":success])
                }
                
//                CarePlanStoreManager.sharedCarePlanStoreManager.checkLastActivity()
            default:
                break
            }
        }
    }
    
    // MARK: Data parsing
    
    func parseEntireStore(_ initialCompletion: @escaping (Data) -> Void) {
        let data = NSMutableData()
        NSKeyedArchiver.setClassName("ActivityTarget", for: ActivityTarget.self)
        let encoder = NSKeyedArchiver(forWritingWith: data)
        encoder.encode("allData", forKey: "type")
        
        var activitiesArray = [[String : Any]]()
        var masterEventsArray = [String : [[String : Any]]]()
        
        let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        let today = calendar.dateComponents([.day, .month, .year, .era], from: Date())
        
        weak var weakSelf = self
        
        self.store.events(onDate: today, type: .intervention, completion: { (allInterventionsArray, errorOrNil) in
            // allEventsArray is grouped by activity.
            var order = [String]()
            var interventionsParsed = 0
            for interventionActivityGroup in allInterventionsArray {
                if interventionActivityGroup.count == 0 {
                    continue
                }
                
                var interventionEventArray = [[String : Any]]()
                activitiesArray.append(self.parseActivityToDictionary(interventionActivityGroup[0].activity, numberOfEventsForToday: UInt(interventionActivityGroup.count), completed: self.isAllEventsCompleted(interventionActivityGroup)))
                for event in interventionActivityGroup {
                    interventionEventArray.append(self.parseEventToDictionary(event))
                }
                masterEventsArray[interventionActivityGroup[0].activity.identifier] = interventionEventArray
                order.append(interventionActivityGroup[0].activity.identifier)
                
                interventionsParsed += 1
            }
            
            if let strongSelf = weakSelf {
                strongSelf.store.events(onDate: today, type: .assessment, completion: { (allAssessmentsArray, errorOrNil) in
                    var assessmentsParsed = 0
                    for assessmentActivityGroup in allAssessmentsArray {
                        if assessmentActivityGroup.count == 0 {
                            continue
                        }
                        
                        var assessmentEventArray = [[String : Any]]()
                        activitiesArray.append(self.parseActivityToDictionary(assessmentActivityGroup[0].activity, numberOfEventsForToday: UInt(1), completed: self.isAllEventsCompleted(assessmentActivityGroup)))
                        
                        assessmentEventArray.append(self.parseEventToDictionary(assessmentActivityGroup.first!))
                        
                        masterEventsArray[assessmentActivityGroup[0].activity.identifier] = assessmentEventArray
                        order.append(assessmentActivityGroup[0].activity.identifier)
                        
                        assessmentsParsed += 1
                    }
                    encoder.encode(order, forKey: "activityOrder")
                    encoder.encode(activitiesArray, forKey: "activities")
                    encoder.encode(masterEventsArray, forKey: "events")
                    
                    encoder.finishEncoding()
                    initialCompletion(data as Data)
                    self.session.sendMessageData(data as Data, replyHandler: nil, errorHandler: nil)
                })
            }
        })
        
    }
    
    func isAllEventsCompleted(_ events: [OCKCarePlanEvent]) -> Bool {
        return events.first(where: {$0.state != .completed}) == nil
    }
    
    func parseActivityToDictionary(_ activity: OCKCarePlanActivity, numberOfEventsForToday: UInt, completed: Bool) -> [String : Any] {
        var activityDictionary = [String: Any]()
        activityDictionary["identifier"] = activity.identifier
        activityDictionary["title"] = activity.title
        activityDictionary["isOptional"] = activity.optional
        
        if activity.type == .intervention {
            activityDictionary["isIntervention"] = true
        }
        else {
            activityDictionary["isIntervention"] = false
        }
        
        if activity.text != nil {
            activityDictionary["text"] = activity.text
        }
        
        if activity.tintColor != nil {
            let colorsArray = activity.tintColor?.cgColor.components
            if colorsArray != nil {
                activityDictionary["tintColor"] = [colorsArray![0], colorsArray![1], colorsArray![2], colorsArray![3]]
            }
        }
        
        activityDictionary["numberOfEventsForToday"] = numberOfEventsForToday
        activityDictionary["completed"] = completed
        
        activityDictionary["activityTarget"] = activity.userInfo?["activityTarget"] as? ActivityTarget
        activityDictionary["workoutType"] = activity.userInfo?["workoutType"] as? UInt
        activityDictionary["locationType"] = activity.userInfo?["locationType"] as? Int
        
        return activityDictionary
    }
    
    func parseEventToDictionary(_ event: OCKCarePlanEvent) -> [String : Any] {
        var eventDictionary = [String: Any]()
        eventDictionary["occurrenceIndexOfDay"] = event.occurrenceIndexOfDay
        eventDictionary["activityIdentifier"] = event.activity.identifier
        eventDictionary["state"] = event.state.rawValue
        return eventDictionary
    }
    
    // MARK: Handling concurency with watch
    
    func hashEventUpdate(_ activityIdentifier : String, eventIndex : UInt, state : OCKCarePlanEventState) -> String {
        return "\(activityIdentifier);\(eventIndex);\(state.rawValue)"
    }
    
}

