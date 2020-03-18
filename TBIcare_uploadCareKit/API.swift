//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTBIcareInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutTypeInput? = nil, schedule: ScheduleInput? = nil, patient: PatientInput? = nil, event: EventInput? = nil) {
    graphQLMap = ["id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType, "schedule": schedule, "patient": patient, "event": event]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var color: String? {
    get {
      return graphQLMap["color"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "color")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var groupId: String? {
    get {
      return graphQLMap["groupId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "groupId")
    }
  }

  public var imageUrl: String? {
    get {
      return graphQLMap["imageURL"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var instructions: String? {
    get {
      return graphQLMap["instructions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "instructions")
    }
  }

  public var locationType: String? {
    get {
      return graphQLMap["locationType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locationType")
    }
  }

  public var `optional`: Bool? {
    get {
      return graphQLMap["optional"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "optional")
    }
  }

  public var resultResetable: Bool? {
    get {
      return graphQLMap["resultResetable"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "resultResetable")
    }
  }

  public var startDate: String? {
    get {
      return graphQLMap["startDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var subtype: String? {
    get {
      return graphQLMap["subtype"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "subtype")
    }
  }

  public var summary: String? {
    get {
      return graphQLMap["summary"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "summary")
    }
  }

  public var targetActiveBurnedEnergy: Int? {
    get {
      return graphQLMap["targetActiveBurnedEnergy"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
    }
  }

  public var targetDistance: Int? {
    get {
      return graphQLMap["targetDistance"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetDistance")
    }
  }

  public var targetHeartRate: Int? {
    get {
      return graphQLMap["targetHeartRate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetHeartRate")
    }
  }

  public var targetSteps: Int? {
    get {
      return graphQLMap["targetSteps"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetSteps")
    }
  }

  public var targetTime: Int? {
    get {
      return graphQLMap["targetTime"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetTime")
    }
  }

  public var text: String? {
    get {
      return graphQLMap["text"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "text")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var type: String? {
    get {
      return graphQLMap["type"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var workoutType: WorkoutTypeInput? {
    get {
      return graphQLMap["workoutType"] as! WorkoutTypeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "workoutType")
    }
  }

  public var schedule: ScheduleInput? {
    get {
      return graphQLMap["schedule"] as! ScheduleInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "schedule")
    }
  }

  public var patient: PatientInput? {
    get {
      return graphQLMap["patient"] as! PatientInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "patient")
    }
  }

  public var event: EventInput? {
    get {
      return graphQLMap["event"] as! EventInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "event")
    }
  }
}

public struct WorkoutTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(category: String? = nil, id: String? = nil, name: String? = nil) {
    graphQLMap = ["category": category, "id": id, "name": name]
  }

  public var category: String? {
    get {
      return graphQLMap["category"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var id: String? {
    get {
      return graphQLMap["id"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct ScheduleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
    graphQLMap = ["createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency]
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var endDate: String? {
    get {
      return graphQLMap["endDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endDate")
    }
  }

  public var skip: Int? {
    get {
      return graphQLMap["skip"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "skip")
    }
  }

  public var type: String? {
    get {
      return graphQLMap["type"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var frequency: [Int?]? {
    get {
      return graphQLMap["frequency"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "frequency")
    }
  }
}

public struct PatientInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2MaxInput? = nil, heartRateVariability: HeartRateVariabilityInput? = nil, careTeamContact: CareTeamContactInput? = nil) {
    graphQLMap = ["categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max, "heartRateVariability": heartRateVariability, "careTeamContact": careTeamContact]
  }

  public var categories: String? {
    get {
      return graphQLMap["categories"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "categories")
    }
  }

  public var color: String? {
    get {
      return graphQLMap["color"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "color")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var detailedInfo: String? {
    get {
      return graphQLMap["detailedInfo"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "detailedInfo")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var emailVerified: Bool? {
    get {
      return graphQLMap["emailVerified"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "emailVerified")
    }
  }

  public var imageUrl: String? {
    get {
      return graphQLMap["imageURL"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var monogram: String? {
    get {
      return graphQLMap["monogram"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "monogram")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var password: String? {
    get {
      return graphQLMap["password"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var userName: String? {
    get {
      return graphQLMap["userName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var vo2Max: Vo2MaxInput? {
    get {
      return graphQLMap["vo2Max"] as! Vo2MaxInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "vo2Max")
    }
  }

  public var heartRateVariability: HeartRateVariabilityInput? {
    get {
      return graphQLMap["heartRateVariability"] as! HeartRateVariabilityInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "heartRateVariability")
    }
  }

  public var careTeamContact: CareTeamContactInput? {
    get {
      return graphQLMap["careTeamContact"] as! CareTeamContactInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "careTeamContact")
    }
  }
}

public struct Vo2MaxInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
    graphQLMap = ["createdAt": createdAt, "recordedAt": recordedAt, "value": value]
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var recordedAt: String? {
    get {
      return graphQLMap["recordedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recordedAt")
    }
  }

  public var value: Double? {
    get {
      return graphQLMap["value"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }
}

public struct HeartRateVariabilityInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
    graphQLMap = ["createdAt": createdAt, "recordedAt": recordedAt, "value": value]
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var recordedAt: String? {
    get {
      return graphQLMap["recordedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recordedAt")
    }
  }

  public var value: Double? {
    get {
      return graphQLMap["value"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }
}

public struct CareTeamContactInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: ItemsInput? = nil) {
    graphQLMap = ["name": name, "relation": relation, "type": type, "items": items]
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var relation: String? {
    get {
      return graphQLMap["relation"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "relation")
    }
  }

  public var type: String? {
    get {
      return graphQLMap["type"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var items: ItemsInput? {
    get {
      return graphQLMap["items"] as! ItemsInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "items")
    }
  }
}

public struct ItemsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
    graphQLMap = ["email": email, "phone": phone, "sms": sms]
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var phone: String? {
    get {
      return graphQLMap["phone"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phone")
    }
  }

  public var sms: String? {
    get {
      return graphQLMap["sms"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sms")
    }
  }
}

public struct EventInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [AttemptInput?]? = nil) {
    graphQLMap = ["createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt]
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var numberOfDaysSinceStart: Int? {
    get {
      return graphQLMap["numberOfDaysSinceStart"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "numberOfDaysSinceStart")
    }
  }

  public var occurrenceIndexofDay: Int? {
    get {
      return graphQLMap["occurrenceIndexofDay"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "occurrenceIndexofDay")
    }
  }

  public var state: Int? {
    get {
      return graphQLMap["state"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "state")
    }
  }

  public var attempt: [AttemptInput?]? {
    get {
      return graphQLMap["attempt"] as! [AttemptInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attempt")
    }
  }
}

public struct AttemptInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRateInput? = nil) {
    graphQLMap = ["activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate]
  }

  public var activeEnergyBurned: Int? {
    get {
      return graphQLMap["activeEnergyBurned"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "activeEnergyBurned")
    }
  }

  public var borgScale: String? {
    get {
      return graphQLMap["borgScale"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "borgScale")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var distance: Int? {
    get {
      return graphQLMap["distance"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "distance")
    }
  }

  public var heartRateCount: Int? {
    get {
      return graphQLMap["heartRateCount"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "heartRateCount")
    }
  }

  public var heartRateReport: String? {
    get {
      return graphQLMap["heartRateReport"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "heartRateReport")
    }
  }

  public var steps: Int? {
    get {
      return graphQLMap["steps"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "steps")
    }
  }

  public var time: Int? {
    get {
      return graphQLMap["time"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "time")
    }
  }

  public var workoutAssessment: String? {
    get {
      return graphQLMap["workoutAssessment"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "workoutAssessment")
    }
  }

  public var heartRate: HeartRateInput? {
    get {
      return graphQLMap["heartRate"] as! HeartRateInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "heartRate")
    }
  }
}

public struct HeartRateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
    graphQLMap = ["createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt]
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var heartRateValue: [Double?]? {
    get {
      return graphQLMap["heartRateValue"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "heartRateValue")
    }
  }

  public var recordedAt: String? {
    get {
      return graphQLMap["recordedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recordedAt")
    }
  }
}

public struct ModelTBIcareConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(color: ModelStringInput? = nil, createdAt: ModelStringInput? = nil, groupId: ModelStringInput? = nil, imageUrl: ModelStringInput? = nil, instructions: ModelStringInput? = nil, locationType: ModelStringInput? = nil, `optional`: ModelBooleanInput? = nil, resultResetable: ModelBooleanInput? = nil, startDate: ModelStringInput? = nil, subtype: ModelStringInput? = nil, summary: ModelStringInput? = nil, targetActiveBurnedEnergy: ModelIntInput? = nil, targetDistance: ModelIntInput? = nil, targetHeartRate: ModelIntInput? = nil, targetSteps: ModelIntInput? = nil, targetTime: ModelIntInput? = nil, text: ModelStringInput? = nil, title: ModelStringInput? = nil, type: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelTBIcareConditionInput?]? = nil, or: [ModelTBIcareConditionInput?]? = nil, not: ModelTBIcareConditionInput? = nil) {
    graphQLMap = ["color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var color: ModelStringInput? {
    get {
      return graphQLMap["color"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "color")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var groupId: ModelStringInput? {
    get {
      return graphQLMap["groupId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "groupId")
    }
  }

  public var imageUrl: ModelStringInput? {
    get {
      return graphQLMap["imageURL"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var instructions: ModelStringInput? {
    get {
      return graphQLMap["instructions"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "instructions")
    }
  }

  public var locationType: ModelStringInput? {
    get {
      return graphQLMap["locationType"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locationType")
    }
  }

  public var `optional`: ModelBooleanInput? {
    get {
      return graphQLMap["optional"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "optional")
    }
  }

  public var resultResetable: ModelBooleanInput? {
    get {
      return graphQLMap["resultResetable"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "resultResetable")
    }
  }

  public var startDate: ModelStringInput? {
    get {
      return graphQLMap["startDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var subtype: ModelStringInput? {
    get {
      return graphQLMap["subtype"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "subtype")
    }
  }

  public var summary: ModelStringInput? {
    get {
      return graphQLMap["summary"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "summary")
    }
  }

  public var targetActiveBurnedEnergy: ModelIntInput? {
    get {
      return graphQLMap["targetActiveBurnedEnergy"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
    }
  }

  public var targetDistance: ModelIntInput? {
    get {
      return graphQLMap["targetDistance"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetDistance")
    }
  }

  public var targetHeartRate: ModelIntInput? {
    get {
      return graphQLMap["targetHeartRate"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetHeartRate")
    }
  }

  public var targetSteps: ModelIntInput? {
    get {
      return graphQLMap["targetSteps"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetSteps")
    }
  }

  public var targetTime: ModelIntInput? {
    get {
      return graphQLMap["targetTime"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetTime")
    }
  }

  public var text: ModelStringInput? {
    get {
      return graphQLMap["text"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "text")
    }
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var type: ModelStringInput? {
    get {
      return graphQLMap["type"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelTBIcareConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTBIcareConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTBIcareConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTBIcareConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTBIcareConditionInput? {
    get {
      return graphQLMap["not"] as! ModelTBIcareConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateTBIcareInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutTypeInput? = nil, schedule: ScheduleInput? = nil, patient: PatientInput? = nil, event: EventInput? = nil) {
    graphQLMap = ["id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType, "schedule": schedule, "patient": patient, "event": event]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var color: String? {
    get {
      return graphQLMap["color"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "color")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var groupId: String? {
    get {
      return graphQLMap["groupId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "groupId")
    }
  }

  public var imageUrl: String? {
    get {
      return graphQLMap["imageURL"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var instructions: String? {
    get {
      return graphQLMap["instructions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "instructions")
    }
  }

  public var locationType: String? {
    get {
      return graphQLMap["locationType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locationType")
    }
  }

  public var `optional`: Bool? {
    get {
      return graphQLMap["optional"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "optional")
    }
  }

  public var resultResetable: Bool? {
    get {
      return graphQLMap["resultResetable"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "resultResetable")
    }
  }

  public var startDate: String? {
    get {
      return graphQLMap["startDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var subtype: String? {
    get {
      return graphQLMap["subtype"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "subtype")
    }
  }

  public var summary: String? {
    get {
      return graphQLMap["summary"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "summary")
    }
  }

  public var targetActiveBurnedEnergy: Int? {
    get {
      return graphQLMap["targetActiveBurnedEnergy"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
    }
  }

  public var targetDistance: Int? {
    get {
      return graphQLMap["targetDistance"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetDistance")
    }
  }

  public var targetHeartRate: Int? {
    get {
      return graphQLMap["targetHeartRate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetHeartRate")
    }
  }

  public var targetSteps: Int? {
    get {
      return graphQLMap["targetSteps"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetSteps")
    }
  }

  public var targetTime: Int? {
    get {
      return graphQLMap["targetTime"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetTime")
    }
  }

  public var text: String? {
    get {
      return graphQLMap["text"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "text")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var type: String? {
    get {
      return graphQLMap["type"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var updatedAt: String? {
    get {
      return graphQLMap["updatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var workoutType: WorkoutTypeInput? {
    get {
      return graphQLMap["workoutType"] as! WorkoutTypeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "workoutType")
    }
  }

  public var schedule: ScheduleInput? {
    get {
      return graphQLMap["schedule"] as! ScheduleInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "schedule")
    }
  }

  public var patient: PatientInput? {
    get {
      return graphQLMap["patient"] as! PatientInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "patient")
    }
  }

  public var event: EventInput? {
    get {
      return graphQLMap["event"] as! EventInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "event")
    }
  }
}

public struct DeleteTBIcareInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelTBIcareFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, color: ModelStringInput? = nil, createdAt: ModelStringInput? = nil, groupId: ModelStringInput? = nil, imageUrl: ModelStringInput? = nil, instructions: ModelStringInput? = nil, locationType: ModelStringInput? = nil, `optional`: ModelBooleanInput? = nil, resultResetable: ModelBooleanInput? = nil, startDate: ModelStringInput? = nil, subtype: ModelStringInput? = nil, summary: ModelStringInput? = nil, targetActiveBurnedEnergy: ModelIntInput? = nil, targetDistance: ModelIntInput? = nil, targetHeartRate: ModelIntInput? = nil, targetSteps: ModelIntInput? = nil, targetTime: ModelIntInput? = nil, text: ModelStringInput? = nil, title: ModelStringInput? = nil, type: ModelStringInput? = nil, updatedAt: ModelStringInput? = nil, and: [ModelTBIcareFilterInput?]? = nil, or: [ModelTBIcareFilterInput?]? = nil, not: ModelTBIcareFilterInput? = nil) {
    graphQLMap = ["id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var color: ModelStringInput? {
    get {
      return graphQLMap["color"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "color")
    }
  }

  public var createdAt: ModelStringInput? {
    get {
      return graphQLMap["createdAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var groupId: ModelStringInput? {
    get {
      return graphQLMap["groupId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "groupId")
    }
  }

  public var imageUrl: ModelStringInput? {
    get {
      return graphQLMap["imageURL"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var instructions: ModelStringInput? {
    get {
      return graphQLMap["instructions"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "instructions")
    }
  }

  public var locationType: ModelStringInput? {
    get {
      return graphQLMap["locationType"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locationType")
    }
  }

  public var `optional`: ModelBooleanInput? {
    get {
      return graphQLMap["optional"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "optional")
    }
  }

  public var resultResetable: ModelBooleanInput? {
    get {
      return graphQLMap["resultResetable"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "resultResetable")
    }
  }

  public var startDate: ModelStringInput? {
    get {
      return graphQLMap["startDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var subtype: ModelStringInput? {
    get {
      return graphQLMap["subtype"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "subtype")
    }
  }

  public var summary: ModelStringInput? {
    get {
      return graphQLMap["summary"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "summary")
    }
  }

  public var targetActiveBurnedEnergy: ModelIntInput? {
    get {
      return graphQLMap["targetActiveBurnedEnergy"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
    }
  }

  public var targetDistance: ModelIntInput? {
    get {
      return graphQLMap["targetDistance"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetDistance")
    }
  }

  public var targetHeartRate: ModelIntInput? {
    get {
      return graphQLMap["targetHeartRate"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetHeartRate")
    }
  }

  public var targetSteps: ModelIntInput? {
    get {
      return graphQLMap["targetSteps"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetSteps")
    }
  }

  public var targetTime: ModelIntInput? {
    get {
      return graphQLMap["targetTime"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "targetTime")
    }
  }

  public var text: ModelStringInput? {
    get {
      return graphQLMap["text"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "text")
    }
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var type: ModelStringInput? {
    get {
      return graphQLMap["type"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var updatedAt: ModelStringInput? {
    get {
      return graphQLMap["updatedAt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var and: [ModelTBIcareFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTBIcareFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTBIcareFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTBIcareFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTBIcareFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTBIcareFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public final class CreateTbIcareMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTbIcare($input: CreateTBIcareInput!, $condition: ModelTBIcareConditionInput) {\n  createTBIcare(input: $input, condition: $condition) {\n    __typename\n    id\n    color\n    createdAt\n    groupId\n    imageURL\n    instructions\n    locationType\n    optional\n    resultResetable\n    startDate\n    subtype\n    summary\n    targetActiveBurnedEnergy\n    targetDistance\n    targetHeartRate\n    targetSteps\n    targetTime\n    text\n    title\n    type\n    updatedAt\n    workoutType {\n      __typename\n      category\n      id\n      name\n    }\n    schedule {\n      __typename\n      createdAt\n      endDate\n      skip\n      type\n      frequency\n    }\n    patient {\n      __typename\n      categories\n      color\n      createdAt\n      detailedInfo\n      email\n      emailVerified\n      imageURL\n      monogram\n      name\n      password\n      userName\n      vo2Max {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      heartRateVariability {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      careTeamContact {\n        __typename\n        name\n        relation\n        type\n        items {\n          __typename\n          email\n          phone\n          sms\n        }\n      }\n    }\n    event {\n      __typename\n      createdAt\n      numberOfDaysSinceStart\n      occurrenceIndexofDay\n      state\n      attempt {\n        __typename\n        activeEnergyBurned\n        borgScale\n        createdAt\n        distance\n        heartRateCount\n        heartRateReport\n        steps\n        time\n        workoutAssessment\n        heartRate {\n          __typename\n          createdAt\n          heartRateValue\n          recordedAt\n        }\n      }\n    }\n  }\n}"

  public var input: CreateTBIcareInput
  public var condition: ModelTBIcareConditionInput?

  public init(input: CreateTBIcareInput, condition: ModelTBIcareConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTBIcare", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTbIcare: CreateTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTBIcare": createTbIcare.flatMap { $0.snapshot }])
    }

    public var createTbIcare: CreateTbIcare? {
      get {
        return (snapshot["createTBIcare"] as? Snapshot).flatMap { CreateTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTBIcare")
      }
    }

    public struct CreateTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["TBIcare"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("color", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("groupId", type: .scalar(String.self)),
        GraphQLField("imageURL", type: .scalar(String.self)),
        GraphQLField("instructions", type: .scalar(String.self)),
        GraphQLField("locationType", type: .scalar(String.self)),
        GraphQLField("optional", type: .scalar(Bool.self)),
        GraphQLField("resultResetable", type: .scalar(Bool.self)),
        GraphQLField("startDate", type: .scalar(String.self)),
        GraphQLField("subtype", type: .scalar(String.self)),
        GraphQLField("summary", type: .scalar(String.self)),
        GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
        GraphQLField("targetDistance", type: .scalar(Int.self)),
        GraphQLField("targetHeartRate", type: .scalar(Int.self)),
        GraphQLField("targetSteps", type: .scalar(Int.self)),
        GraphQLField("targetTime", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("workoutType", type: .object(WorkoutType.selections)),
        GraphQLField("schedule", type: .object(Schedule.selections)),
        GraphQLField("patient", type: .object(Patient.selections)),
        GraphQLField("event", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
        self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var groupId: String? {
        get {
          return snapshot["groupId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "groupId")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var instructions: String? {
        get {
          return snapshot["instructions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "instructions")
        }
      }

      public var locationType: String? {
        get {
          return snapshot["locationType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "locationType")
        }
      }

      public var `optional`: Bool? {
        get {
          return snapshot["optional"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "optional")
        }
      }

      public var resultResetable: Bool? {
        get {
          return snapshot["resultResetable"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "resultResetable")
        }
      }

      public var startDate: String? {
        get {
          return snapshot["startDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var subtype: String? {
        get {
          return snapshot["subtype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subtype")
        }
      }

      public var summary: String? {
        get {
          return snapshot["summary"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "summary")
        }
      }

      public var targetActiveBurnedEnergy: Int? {
        get {
          return snapshot["targetActiveBurnedEnergy"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
        }
      }

      public var targetDistance: Int? {
        get {
          return snapshot["targetDistance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetDistance")
        }
      }

      public var targetHeartRate: Int? {
        get {
          return snapshot["targetHeartRate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetHeartRate")
        }
      }

      public var targetSteps: Int? {
        get {
          return snapshot["targetSteps"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetSteps")
        }
      }

      public var targetTime: Int? {
        get {
          return snapshot["targetTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetTime")
        }
      }

      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var workoutType: WorkoutType? {
        get {
          return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
        }
      }

      public var schedule: Schedule? {
        get {
          return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
        }
      }

      public var patient: Patient? {
        get {
          return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "patient")
        }
      }

      public var event: Event? {
        get {
          return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "event")
        }
      }

      public struct WorkoutType: GraphQLSelectionSet {
        public static let possibleTypes = ["WorkoutType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, id: String? = nil, name: String? = nil) {
          self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes = ["Schedule"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("endDate", type: .scalar(String.self)),
          GraphQLField("skip", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("frequency", type: .list(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
          self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var endDate: String? {
          get {
            return snapshot["endDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var skip: Int? {
          get {
            return snapshot["skip"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "skip")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var frequency: [Int?]? {
          get {
            return snapshot["frequency"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "frequency")
          }
        }
      }

      public struct Patient: GraphQLSelectionSet {
        public static let possibleTypes = ["Patient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categories", type: .scalar(String.self)),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("detailedInfo", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("monogram", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
          GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
          GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
          self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var categories: String? {
          get {
            return snapshot["categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categories")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var detailedInfo: String? {
          get {
            return snapshot["detailedInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "detailedInfo")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var emailVerified: Bool? {
          get {
            return snapshot["emailVerified"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailVerified")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var monogram: String? {
          get {
            return snapshot["monogram"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "monogram")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var vo2Max: Vo2Max? {
          get {
            return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
          }
        }

        public var heartRateVariability: HeartRateVariability? {
          get {
            return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
          }
        }

        public var careTeamContact: CareTeamContact? {
          get {
            return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
          }
        }

        public struct Vo2Max: GraphQLSelectionSet {
          public static let possibleTypes = ["Vo2Max"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct HeartRateVariability: GraphQLSelectionSet {
          public static let possibleTypes = ["HeartRateVariability"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct CareTeamContact: GraphQLSelectionSet {
          public static let possibleTypes = ["CareTeamContact"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("relation", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("items", type: .object(Item.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
            self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var relation: String? {
            get {
              return snapshot["relation"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "relation")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var items: Item? {
            get {
              return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "items")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Items"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phone", type: .scalar(String.self)),
              GraphQLField("sms", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
              self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var email: String? {
              get {
                return snapshot["email"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "email")
              }
            }

            public var phone: String? {
              get {
                return snapshot["phone"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "phone")
              }
            }

            public var sms: String? {
              get {
                return snapshot["sms"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sms")
              }
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
          GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
          GraphQLField("state", type: .scalar(Int.self)),
          GraphQLField("attempt", type: .list(.object(Attempt.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
          self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var numberOfDaysSinceStart: Int? {
          get {
            return snapshot["numberOfDaysSinceStart"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
          }
        }

        public var occurrenceIndexofDay: Int? {
          get {
            return snapshot["occurrenceIndexofDay"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
          }
        }

        public var state: Int? {
          get {
            return snapshot["state"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var attempt: [Attempt?]? {
          get {
            return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
          }
        }

        public struct Attempt: GraphQLSelectionSet {
          public static let possibleTypes = ["Attempt"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
            GraphQLField("borgScale", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("distance", type: .scalar(Int.self)),
            GraphQLField("heartRateCount", type: .scalar(Int.self)),
            GraphQLField("heartRateReport", type: .scalar(String.self)),
            GraphQLField("steps", type: .scalar(Int.self)),
            GraphQLField("time", type: .scalar(Int.self)),
            GraphQLField("workoutAssessment", type: .scalar(String.self)),
            GraphQLField("heartRate", type: .object(HeartRate.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
            self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var activeEnergyBurned: Int? {
            get {
              return snapshot["activeEnergyBurned"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
            }
          }

          public var borgScale: String? {
            get {
              return snapshot["borgScale"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "borgScale")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var distance: Int? {
            get {
              return snapshot["distance"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "distance")
            }
          }

          public var heartRateCount: Int? {
            get {
              return snapshot["heartRateCount"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateCount")
            }
          }

          public var heartRateReport: String? {
            get {
              return snapshot["heartRateReport"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateReport")
            }
          }

          public var steps: Int? {
            get {
              return snapshot["steps"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "steps")
            }
          }

          public var time: Int? {
            get {
              return snapshot["time"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var workoutAssessment: String? {
            get {
              return snapshot["workoutAssessment"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "workoutAssessment")
            }
          }

          public var heartRate: HeartRate? {
            get {
              return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
            }
          }

          public struct HeartRate: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRate"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
              GraphQLField("recordedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
              self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var heartRateValue: [Double?]? {
              get {
                return snapshot["heartRateValue"] as? [Double?]
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateValue")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class UpdateTbIcareMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTbIcare($input: UpdateTBIcareInput!, $condition: ModelTBIcareConditionInput) {\n  updateTBIcare(input: $input, condition: $condition) {\n    __typename\n    id\n    color\n    createdAt\n    groupId\n    imageURL\n    instructions\n    locationType\n    optional\n    resultResetable\n    startDate\n    subtype\n    summary\n    targetActiveBurnedEnergy\n    targetDistance\n    targetHeartRate\n    targetSteps\n    targetTime\n    text\n    title\n    type\n    updatedAt\n    workoutType {\n      __typename\n      category\n      id\n      name\n    }\n    schedule {\n      __typename\n      createdAt\n      endDate\n      skip\n      type\n      frequency\n    }\n    patient {\n      __typename\n      categories\n      color\n      createdAt\n      detailedInfo\n      email\n      emailVerified\n      imageURL\n      monogram\n      name\n      password\n      userName\n      vo2Max {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      heartRateVariability {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      careTeamContact {\n        __typename\n        name\n        relation\n        type\n        items {\n          __typename\n          email\n          phone\n          sms\n        }\n      }\n    }\n    event {\n      __typename\n      createdAt\n      numberOfDaysSinceStart\n      occurrenceIndexofDay\n      state\n      attempt {\n        __typename\n        activeEnergyBurned\n        borgScale\n        createdAt\n        distance\n        heartRateCount\n        heartRateReport\n        steps\n        time\n        workoutAssessment\n        heartRate {\n          __typename\n          createdAt\n          heartRateValue\n          recordedAt\n        }\n      }\n    }\n  }\n}"

  public var input: UpdateTBIcareInput
  public var condition: ModelTBIcareConditionInput?

  public init(input: UpdateTBIcareInput, condition: ModelTBIcareConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTBIcare", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTbIcare: UpdateTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTBIcare": updateTbIcare.flatMap { $0.snapshot }])
    }

    public var updateTbIcare: UpdateTbIcare? {
      get {
        return (snapshot["updateTBIcare"] as? Snapshot).flatMap { UpdateTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTBIcare")
      }
    }

    public struct UpdateTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["TBIcare"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("color", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("groupId", type: .scalar(String.self)),
        GraphQLField("imageURL", type: .scalar(String.self)),
        GraphQLField("instructions", type: .scalar(String.self)),
        GraphQLField("locationType", type: .scalar(String.self)),
        GraphQLField("optional", type: .scalar(Bool.self)),
        GraphQLField("resultResetable", type: .scalar(Bool.self)),
        GraphQLField("startDate", type: .scalar(String.self)),
        GraphQLField("subtype", type: .scalar(String.self)),
        GraphQLField("summary", type: .scalar(String.self)),
        GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
        GraphQLField("targetDistance", type: .scalar(Int.self)),
        GraphQLField("targetHeartRate", type: .scalar(Int.self)),
        GraphQLField("targetSteps", type: .scalar(Int.self)),
        GraphQLField("targetTime", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("workoutType", type: .object(WorkoutType.selections)),
        GraphQLField("schedule", type: .object(Schedule.selections)),
        GraphQLField("patient", type: .object(Patient.selections)),
        GraphQLField("event", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
        self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var groupId: String? {
        get {
          return snapshot["groupId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "groupId")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var instructions: String? {
        get {
          return snapshot["instructions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "instructions")
        }
      }

      public var locationType: String? {
        get {
          return snapshot["locationType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "locationType")
        }
      }

      public var `optional`: Bool? {
        get {
          return snapshot["optional"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "optional")
        }
      }

      public var resultResetable: Bool? {
        get {
          return snapshot["resultResetable"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "resultResetable")
        }
      }

      public var startDate: String? {
        get {
          return snapshot["startDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var subtype: String? {
        get {
          return snapshot["subtype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subtype")
        }
      }

      public var summary: String? {
        get {
          return snapshot["summary"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "summary")
        }
      }

      public var targetActiveBurnedEnergy: Int? {
        get {
          return snapshot["targetActiveBurnedEnergy"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
        }
      }

      public var targetDistance: Int? {
        get {
          return snapshot["targetDistance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetDistance")
        }
      }

      public var targetHeartRate: Int? {
        get {
          return snapshot["targetHeartRate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetHeartRate")
        }
      }

      public var targetSteps: Int? {
        get {
          return snapshot["targetSteps"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetSteps")
        }
      }

      public var targetTime: Int? {
        get {
          return snapshot["targetTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetTime")
        }
      }

      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var workoutType: WorkoutType? {
        get {
          return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
        }
      }

      public var schedule: Schedule? {
        get {
          return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
        }
      }

      public var patient: Patient? {
        get {
          return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "patient")
        }
      }

      public var event: Event? {
        get {
          return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "event")
        }
      }

      public struct WorkoutType: GraphQLSelectionSet {
        public static let possibleTypes = ["WorkoutType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, id: String? = nil, name: String? = nil) {
          self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes = ["Schedule"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("endDate", type: .scalar(String.self)),
          GraphQLField("skip", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("frequency", type: .list(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
          self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var endDate: String? {
          get {
            return snapshot["endDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var skip: Int? {
          get {
            return snapshot["skip"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "skip")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var frequency: [Int?]? {
          get {
            return snapshot["frequency"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "frequency")
          }
        }
      }

      public struct Patient: GraphQLSelectionSet {
        public static let possibleTypes = ["Patient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categories", type: .scalar(String.self)),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("detailedInfo", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("monogram", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
          GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
          GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
          self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var categories: String? {
          get {
            return snapshot["categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categories")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var detailedInfo: String? {
          get {
            return snapshot["detailedInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "detailedInfo")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var emailVerified: Bool? {
          get {
            return snapshot["emailVerified"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailVerified")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var monogram: String? {
          get {
            return snapshot["monogram"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "monogram")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var vo2Max: Vo2Max? {
          get {
            return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
          }
        }

        public var heartRateVariability: HeartRateVariability? {
          get {
            return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
          }
        }

        public var careTeamContact: CareTeamContact? {
          get {
            return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
          }
        }

        public struct Vo2Max: GraphQLSelectionSet {
          public static let possibleTypes = ["Vo2Max"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct HeartRateVariability: GraphQLSelectionSet {
          public static let possibleTypes = ["HeartRateVariability"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct CareTeamContact: GraphQLSelectionSet {
          public static let possibleTypes = ["CareTeamContact"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("relation", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("items", type: .object(Item.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
            self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var relation: String? {
            get {
              return snapshot["relation"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "relation")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var items: Item? {
            get {
              return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "items")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Items"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phone", type: .scalar(String.self)),
              GraphQLField("sms", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
              self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var email: String? {
              get {
                return snapshot["email"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "email")
              }
            }

            public var phone: String? {
              get {
                return snapshot["phone"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "phone")
              }
            }

            public var sms: String? {
              get {
                return snapshot["sms"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sms")
              }
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
          GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
          GraphQLField("state", type: .scalar(Int.self)),
          GraphQLField("attempt", type: .list(.object(Attempt.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
          self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var numberOfDaysSinceStart: Int? {
          get {
            return snapshot["numberOfDaysSinceStart"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
          }
        }

        public var occurrenceIndexofDay: Int? {
          get {
            return snapshot["occurrenceIndexofDay"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
          }
        }

        public var state: Int? {
          get {
            return snapshot["state"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var attempt: [Attempt?]? {
          get {
            return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
          }
        }

        public struct Attempt: GraphQLSelectionSet {
          public static let possibleTypes = ["Attempt"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
            GraphQLField("borgScale", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("distance", type: .scalar(Int.self)),
            GraphQLField("heartRateCount", type: .scalar(Int.self)),
            GraphQLField("heartRateReport", type: .scalar(String.self)),
            GraphQLField("steps", type: .scalar(Int.self)),
            GraphQLField("time", type: .scalar(Int.self)),
            GraphQLField("workoutAssessment", type: .scalar(String.self)),
            GraphQLField("heartRate", type: .object(HeartRate.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
            self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var activeEnergyBurned: Int? {
            get {
              return snapshot["activeEnergyBurned"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
            }
          }

          public var borgScale: String? {
            get {
              return snapshot["borgScale"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "borgScale")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var distance: Int? {
            get {
              return snapshot["distance"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "distance")
            }
          }

          public var heartRateCount: Int? {
            get {
              return snapshot["heartRateCount"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateCount")
            }
          }

          public var heartRateReport: String? {
            get {
              return snapshot["heartRateReport"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateReport")
            }
          }

          public var steps: Int? {
            get {
              return snapshot["steps"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "steps")
            }
          }

          public var time: Int? {
            get {
              return snapshot["time"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var workoutAssessment: String? {
            get {
              return snapshot["workoutAssessment"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "workoutAssessment")
            }
          }

          public var heartRate: HeartRate? {
            get {
              return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
            }
          }

          public struct HeartRate: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRate"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
              GraphQLField("recordedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
              self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var heartRateValue: [Double?]? {
              get {
                return snapshot["heartRateValue"] as? [Double?]
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateValue")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class DeleteTbIcareMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTbIcare($input: DeleteTBIcareInput!, $condition: ModelTBIcareConditionInput) {\n  deleteTBIcare(input: $input, condition: $condition) {\n    __typename\n    id\n    color\n    createdAt\n    groupId\n    imageURL\n    instructions\n    locationType\n    optional\n    resultResetable\n    startDate\n    subtype\n    summary\n    targetActiveBurnedEnergy\n    targetDistance\n    targetHeartRate\n    targetSteps\n    targetTime\n    text\n    title\n    type\n    updatedAt\n    workoutType {\n      __typename\n      category\n      id\n      name\n    }\n    schedule {\n      __typename\n      createdAt\n      endDate\n      skip\n      type\n      frequency\n    }\n    patient {\n      __typename\n      categories\n      color\n      createdAt\n      detailedInfo\n      email\n      emailVerified\n      imageURL\n      monogram\n      name\n      password\n      userName\n      vo2Max {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      heartRateVariability {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      careTeamContact {\n        __typename\n        name\n        relation\n        type\n        items {\n          __typename\n          email\n          phone\n          sms\n        }\n      }\n    }\n    event {\n      __typename\n      createdAt\n      numberOfDaysSinceStart\n      occurrenceIndexofDay\n      state\n      attempt {\n        __typename\n        activeEnergyBurned\n        borgScale\n        createdAt\n        distance\n        heartRateCount\n        heartRateReport\n        steps\n        time\n        workoutAssessment\n        heartRate {\n          __typename\n          createdAt\n          heartRateValue\n          recordedAt\n        }\n      }\n    }\n  }\n}"

  public var input: DeleteTBIcareInput
  public var condition: ModelTBIcareConditionInput?

  public init(input: DeleteTBIcareInput, condition: ModelTBIcareConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTBIcare", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTbIcare: DeleteTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTBIcare": deleteTbIcare.flatMap { $0.snapshot }])
    }

    public var deleteTbIcare: DeleteTbIcare? {
      get {
        return (snapshot["deleteTBIcare"] as? Snapshot).flatMap { DeleteTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTBIcare")
      }
    }

    public struct DeleteTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["TBIcare"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("color", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("groupId", type: .scalar(String.self)),
        GraphQLField("imageURL", type: .scalar(String.self)),
        GraphQLField("instructions", type: .scalar(String.self)),
        GraphQLField("locationType", type: .scalar(String.self)),
        GraphQLField("optional", type: .scalar(Bool.self)),
        GraphQLField("resultResetable", type: .scalar(Bool.self)),
        GraphQLField("startDate", type: .scalar(String.self)),
        GraphQLField("subtype", type: .scalar(String.self)),
        GraphQLField("summary", type: .scalar(String.self)),
        GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
        GraphQLField("targetDistance", type: .scalar(Int.self)),
        GraphQLField("targetHeartRate", type: .scalar(Int.self)),
        GraphQLField("targetSteps", type: .scalar(Int.self)),
        GraphQLField("targetTime", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("workoutType", type: .object(WorkoutType.selections)),
        GraphQLField("schedule", type: .object(Schedule.selections)),
        GraphQLField("patient", type: .object(Patient.selections)),
        GraphQLField("event", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
        self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var groupId: String? {
        get {
          return snapshot["groupId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "groupId")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var instructions: String? {
        get {
          return snapshot["instructions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "instructions")
        }
      }

      public var locationType: String? {
        get {
          return snapshot["locationType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "locationType")
        }
      }

      public var `optional`: Bool? {
        get {
          return snapshot["optional"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "optional")
        }
      }

      public var resultResetable: Bool? {
        get {
          return snapshot["resultResetable"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "resultResetable")
        }
      }

      public var startDate: String? {
        get {
          return snapshot["startDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var subtype: String? {
        get {
          return snapshot["subtype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subtype")
        }
      }

      public var summary: String? {
        get {
          return snapshot["summary"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "summary")
        }
      }

      public var targetActiveBurnedEnergy: Int? {
        get {
          return snapshot["targetActiveBurnedEnergy"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
        }
      }

      public var targetDistance: Int? {
        get {
          return snapshot["targetDistance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetDistance")
        }
      }

      public var targetHeartRate: Int? {
        get {
          return snapshot["targetHeartRate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetHeartRate")
        }
      }

      public var targetSteps: Int? {
        get {
          return snapshot["targetSteps"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetSteps")
        }
      }

      public var targetTime: Int? {
        get {
          return snapshot["targetTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetTime")
        }
      }

      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var workoutType: WorkoutType? {
        get {
          return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
        }
      }

      public var schedule: Schedule? {
        get {
          return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
        }
      }

      public var patient: Patient? {
        get {
          return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "patient")
        }
      }

      public var event: Event? {
        get {
          return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "event")
        }
      }

      public struct WorkoutType: GraphQLSelectionSet {
        public static let possibleTypes = ["WorkoutType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, id: String? = nil, name: String? = nil) {
          self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes = ["Schedule"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("endDate", type: .scalar(String.self)),
          GraphQLField("skip", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("frequency", type: .list(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
          self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var endDate: String? {
          get {
            return snapshot["endDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var skip: Int? {
          get {
            return snapshot["skip"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "skip")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var frequency: [Int?]? {
          get {
            return snapshot["frequency"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "frequency")
          }
        }
      }

      public struct Patient: GraphQLSelectionSet {
        public static let possibleTypes = ["Patient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categories", type: .scalar(String.self)),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("detailedInfo", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("monogram", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
          GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
          GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
          self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var categories: String? {
          get {
            return snapshot["categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categories")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var detailedInfo: String? {
          get {
            return snapshot["detailedInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "detailedInfo")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var emailVerified: Bool? {
          get {
            return snapshot["emailVerified"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailVerified")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var monogram: String? {
          get {
            return snapshot["monogram"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "monogram")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var vo2Max: Vo2Max? {
          get {
            return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
          }
        }

        public var heartRateVariability: HeartRateVariability? {
          get {
            return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
          }
        }

        public var careTeamContact: CareTeamContact? {
          get {
            return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
          }
        }

        public struct Vo2Max: GraphQLSelectionSet {
          public static let possibleTypes = ["Vo2Max"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct HeartRateVariability: GraphQLSelectionSet {
          public static let possibleTypes = ["HeartRateVariability"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct CareTeamContact: GraphQLSelectionSet {
          public static let possibleTypes = ["CareTeamContact"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("relation", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("items", type: .object(Item.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
            self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var relation: String? {
            get {
              return snapshot["relation"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "relation")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var items: Item? {
            get {
              return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "items")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Items"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phone", type: .scalar(String.self)),
              GraphQLField("sms", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
              self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var email: String? {
              get {
                return snapshot["email"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "email")
              }
            }

            public var phone: String? {
              get {
                return snapshot["phone"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "phone")
              }
            }

            public var sms: String? {
              get {
                return snapshot["sms"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sms")
              }
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
          GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
          GraphQLField("state", type: .scalar(Int.self)),
          GraphQLField("attempt", type: .list(.object(Attempt.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
          self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var numberOfDaysSinceStart: Int? {
          get {
            return snapshot["numberOfDaysSinceStart"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
          }
        }

        public var occurrenceIndexofDay: Int? {
          get {
            return snapshot["occurrenceIndexofDay"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
          }
        }

        public var state: Int? {
          get {
            return snapshot["state"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var attempt: [Attempt?]? {
          get {
            return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
          }
        }

        public struct Attempt: GraphQLSelectionSet {
          public static let possibleTypes = ["Attempt"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
            GraphQLField("borgScale", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("distance", type: .scalar(Int.self)),
            GraphQLField("heartRateCount", type: .scalar(Int.self)),
            GraphQLField("heartRateReport", type: .scalar(String.self)),
            GraphQLField("steps", type: .scalar(Int.self)),
            GraphQLField("time", type: .scalar(Int.self)),
            GraphQLField("workoutAssessment", type: .scalar(String.self)),
            GraphQLField("heartRate", type: .object(HeartRate.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
            self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var activeEnergyBurned: Int? {
            get {
              return snapshot["activeEnergyBurned"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
            }
          }

          public var borgScale: String? {
            get {
              return snapshot["borgScale"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "borgScale")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var distance: Int? {
            get {
              return snapshot["distance"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "distance")
            }
          }

          public var heartRateCount: Int? {
            get {
              return snapshot["heartRateCount"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateCount")
            }
          }

          public var heartRateReport: String? {
            get {
              return snapshot["heartRateReport"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateReport")
            }
          }

          public var steps: Int? {
            get {
              return snapshot["steps"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "steps")
            }
          }

          public var time: Int? {
            get {
              return snapshot["time"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var workoutAssessment: String? {
            get {
              return snapshot["workoutAssessment"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "workoutAssessment")
            }
          }

          public var heartRate: HeartRate? {
            get {
              return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
            }
          }

          public struct HeartRate: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRate"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
              GraphQLField("recordedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
              self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var heartRateValue: [Double?]? {
              get {
                return snapshot["heartRateValue"] as? [Double?]
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateValue")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetTbIcareQuery: GraphQLQuery {
  public static let operationString =
    "query GetTbIcare($id: ID!) {\n  getTBIcare(id: $id) {\n    __typename\n    id\n    color\n    createdAt\n    groupId\n    imageURL\n    instructions\n    locationType\n    optional\n    resultResetable\n    startDate\n    subtype\n    summary\n    targetActiveBurnedEnergy\n    targetDistance\n    targetHeartRate\n    targetSteps\n    targetTime\n    text\n    title\n    type\n    updatedAt\n    workoutType {\n      __typename\n      category\n      id\n      name\n    }\n    schedule {\n      __typename\n      createdAt\n      endDate\n      skip\n      type\n      frequency\n    }\n    patient {\n      __typename\n      categories\n      color\n      createdAt\n      detailedInfo\n      email\n      emailVerified\n      imageURL\n      monogram\n      name\n      password\n      userName\n      vo2Max {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      heartRateVariability {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      careTeamContact {\n        __typename\n        name\n        relation\n        type\n        items {\n          __typename\n          email\n          phone\n          sms\n        }\n      }\n    }\n    event {\n      __typename\n      createdAt\n      numberOfDaysSinceStart\n      occurrenceIndexofDay\n      state\n      attempt {\n        __typename\n        activeEnergyBurned\n        borgScale\n        createdAt\n        distance\n        heartRateCount\n        heartRateReport\n        steps\n        time\n        workoutAssessment\n        heartRate {\n          __typename\n          createdAt\n          heartRateValue\n          recordedAt\n        }\n      }\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTBIcare", arguments: ["id": GraphQLVariable("id")], type: .object(GetTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTbIcare: GetTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTBIcare": getTbIcare.flatMap { $0.snapshot }])
    }

    public var getTbIcare: GetTbIcare? {
      get {
        return (snapshot["getTBIcare"] as? Snapshot).flatMap { GetTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTBIcare")
      }
    }

    public struct GetTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["TBIcare"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("color", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("groupId", type: .scalar(String.self)),
        GraphQLField("imageURL", type: .scalar(String.self)),
        GraphQLField("instructions", type: .scalar(String.self)),
        GraphQLField("locationType", type: .scalar(String.self)),
        GraphQLField("optional", type: .scalar(Bool.self)),
        GraphQLField("resultResetable", type: .scalar(Bool.self)),
        GraphQLField("startDate", type: .scalar(String.self)),
        GraphQLField("subtype", type: .scalar(String.self)),
        GraphQLField("summary", type: .scalar(String.self)),
        GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
        GraphQLField("targetDistance", type: .scalar(Int.self)),
        GraphQLField("targetHeartRate", type: .scalar(Int.self)),
        GraphQLField("targetSteps", type: .scalar(Int.self)),
        GraphQLField("targetTime", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("workoutType", type: .object(WorkoutType.selections)),
        GraphQLField("schedule", type: .object(Schedule.selections)),
        GraphQLField("patient", type: .object(Patient.selections)),
        GraphQLField("event", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
        self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var groupId: String? {
        get {
          return snapshot["groupId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "groupId")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var instructions: String? {
        get {
          return snapshot["instructions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "instructions")
        }
      }

      public var locationType: String? {
        get {
          return snapshot["locationType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "locationType")
        }
      }

      public var `optional`: Bool? {
        get {
          return snapshot["optional"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "optional")
        }
      }

      public var resultResetable: Bool? {
        get {
          return snapshot["resultResetable"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "resultResetable")
        }
      }

      public var startDate: String? {
        get {
          return snapshot["startDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var subtype: String? {
        get {
          return snapshot["subtype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subtype")
        }
      }

      public var summary: String? {
        get {
          return snapshot["summary"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "summary")
        }
      }

      public var targetActiveBurnedEnergy: Int? {
        get {
          return snapshot["targetActiveBurnedEnergy"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
        }
      }

      public var targetDistance: Int? {
        get {
          return snapshot["targetDistance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetDistance")
        }
      }

      public var targetHeartRate: Int? {
        get {
          return snapshot["targetHeartRate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetHeartRate")
        }
      }

      public var targetSteps: Int? {
        get {
          return snapshot["targetSteps"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetSteps")
        }
      }

      public var targetTime: Int? {
        get {
          return snapshot["targetTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetTime")
        }
      }

      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var workoutType: WorkoutType? {
        get {
          return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
        }
      }

      public var schedule: Schedule? {
        get {
          return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
        }
      }

      public var patient: Patient? {
        get {
          return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "patient")
        }
      }

      public var event: Event? {
        get {
          return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "event")
        }
      }

      public struct WorkoutType: GraphQLSelectionSet {
        public static let possibleTypes = ["WorkoutType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, id: String? = nil, name: String? = nil) {
          self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes = ["Schedule"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("endDate", type: .scalar(String.self)),
          GraphQLField("skip", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("frequency", type: .list(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
          self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var endDate: String? {
          get {
            return snapshot["endDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var skip: Int? {
          get {
            return snapshot["skip"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "skip")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var frequency: [Int?]? {
          get {
            return snapshot["frequency"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "frequency")
          }
        }
      }

      public struct Patient: GraphQLSelectionSet {
        public static let possibleTypes = ["Patient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categories", type: .scalar(String.self)),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("detailedInfo", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("monogram", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
          GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
          GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
          self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var categories: String? {
          get {
            return snapshot["categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categories")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var detailedInfo: String? {
          get {
            return snapshot["detailedInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "detailedInfo")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var emailVerified: Bool? {
          get {
            return snapshot["emailVerified"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailVerified")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var monogram: String? {
          get {
            return snapshot["monogram"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "monogram")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var vo2Max: Vo2Max? {
          get {
            return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
          }
        }

        public var heartRateVariability: HeartRateVariability? {
          get {
            return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
          }
        }

        public var careTeamContact: CareTeamContact? {
          get {
            return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
          }
        }

        public struct Vo2Max: GraphQLSelectionSet {
          public static let possibleTypes = ["Vo2Max"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct HeartRateVariability: GraphQLSelectionSet {
          public static let possibleTypes = ["HeartRateVariability"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct CareTeamContact: GraphQLSelectionSet {
          public static let possibleTypes = ["CareTeamContact"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("relation", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("items", type: .object(Item.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
            self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var relation: String? {
            get {
              return snapshot["relation"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "relation")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var items: Item? {
            get {
              return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "items")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Items"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phone", type: .scalar(String.self)),
              GraphQLField("sms", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
              self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var email: String? {
              get {
                return snapshot["email"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "email")
              }
            }

            public var phone: String? {
              get {
                return snapshot["phone"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "phone")
              }
            }

            public var sms: String? {
              get {
                return snapshot["sms"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sms")
              }
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
          GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
          GraphQLField("state", type: .scalar(Int.self)),
          GraphQLField("attempt", type: .list(.object(Attempt.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
          self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var numberOfDaysSinceStart: Int? {
          get {
            return snapshot["numberOfDaysSinceStart"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
          }
        }

        public var occurrenceIndexofDay: Int? {
          get {
            return snapshot["occurrenceIndexofDay"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
          }
        }

        public var state: Int? {
          get {
            return snapshot["state"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var attempt: [Attempt?]? {
          get {
            return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
          }
        }

        public struct Attempt: GraphQLSelectionSet {
          public static let possibleTypes = ["Attempt"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
            GraphQLField("borgScale", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("distance", type: .scalar(Int.self)),
            GraphQLField("heartRateCount", type: .scalar(Int.self)),
            GraphQLField("heartRateReport", type: .scalar(String.self)),
            GraphQLField("steps", type: .scalar(Int.self)),
            GraphQLField("time", type: .scalar(Int.self)),
            GraphQLField("workoutAssessment", type: .scalar(String.self)),
            GraphQLField("heartRate", type: .object(HeartRate.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
            self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var activeEnergyBurned: Int? {
            get {
              return snapshot["activeEnergyBurned"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
            }
          }

          public var borgScale: String? {
            get {
              return snapshot["borgScale"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "borgScale")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var distance: Int? {
            get {
              return snapshot["distance"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "distance")
            }
          }

          public var heartRateCount: Int? {
            get {
              return snapshot["heartRateCount"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateCount")
            }
          }

          public var heartRateReport: String? {
            get {
              return snapshot["heartRateReport"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateReport")
            }
          }

          public var steps: Int? {
            get {
              return snapshot["steps"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "steps")
            }
          }

          public var time: Int? {
            get {
              return snapshot["time"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var workoutAssessment: String? {
            get {
              return snapshot["workoutAssessment"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "workoutAssessment")
            }
          }

          public var heartRate: HeartRate? {
            get {
              return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
            }
          }

          public struct HeartRate: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRate"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
              GraphQLField("recordedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
              self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var heartRateValue: [Double?]? {
              get {
                return snapshot["heartRateValue"] as? [Double?]
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateValue")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class ListTbIcaresQuery: GraphQLQuery {
  public static let operationString =
    "query ListTbIcares($filter: ModelTBIcareFilterInput, $limit: Int, $nextToken: String) {\n  listTBIcares(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      color\n      createdAt\n      groupId\n      imageURL\n      instructions\n      locationType\n      optional\n      resultResetable\n      startDate\n      subtype\n      summary\n      targetActiveBurnedEnergy\n      targetDistance\n      targetHeartRate\n      targetSteps\n      targetTime\n      text\n      title\n      type\n      updatedAt\n      workoutType {\n        __typename\n        category\n        id\n        name\n      }\n      schedule {\n        __typename\n        createdAt\n        endDate\n        skip\n        type\n        frequency\n      }\n      patient {\n        __typename\n        categories\n        color\n        createdAt\n        detailedInfo\n        email\n        emailVerified\n        imageURL\n        monogram\n        name\n        password\n        userName\n        vo2Max {\n          __typename\n          createdAt\n          recordedAt\n          value\n        }\n        heartRateVariability {\n          __typename\n          createdAt\n          recordedAt\n          value\n        }\n        careTeamContact {\n          __typename\n          name\n          relation\n          type\n          items {\n            __typename\n            email\n            phone\n            sms\n          }\n        }\n      }\n      event {\n        __typename\n        createdAt\n        numberOfDaysSinceStart\n        occurrenceIndexofDay\n        state\n        attempt {\n          __typename\n          activeEnergyBurned\n          borgScale\n          createdAt\n          distance\n          heartRateCount\n          heartRateReport\n          steps\n          time\n          workoutAssessment\n          heartRate {\n            __typename\n            createdAt\n            heartRateValue\n            recordedAt\n          }\n        }\n      }\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTBIcareFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTBIcareFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTBIcares", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTbIcares: ListTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTBIcares": listTbIcares.flatMap { $0.snapshot }])
    }

    public var listTbIcares: ListTbIcare? {
      get {
        return (snapshot["listTBIcares"] as? Snapshot).flatMap { ListTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTBIcares")
      }
    }

    public struct ListTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTBIcareConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTBIcareConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["TBIcare"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("groupId", type: .scalar(String.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("instructions", type: .scalar(String.self)),
          GraphQLField("locationType", type: .scalar(String.self)),
          GraphQLField("optional", type: .scalar(Bool.self)),
          GraphQLField("resultResetable", type: .scalar(Bool.self)),
          GraphQLField("startDate", type: .scalar(String.self)),
          GraphQLField("subtype", type: .scalar(String.self)),
          GraphQLField("summary", type: .scalar(String.self)),
          GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
          GraphQLField("targetDistance", type: .scalar(Int.self)),
          GraphQLField("targetHeartRate", type: .scalar(Int.self)),
          GraphQLField("targetSteps", type: .scalar(Int.self)),
          GraphQLField("targetTime", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
          GraphQLField("workoutType", type: .object(WorkoutType.selections)),
          GraphQLField("schedule", type: .object(Schedule.selections)),
          GraphQLField("patient", type: .object(Patient.selections)),
          GraphQLField("event", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
          self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var groupId: String? {
          get {
            return snapshot["groupId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "groupId")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var instructions: String? {
          get {
            return snapshot["instructions"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "instructions")
          }
        }

        public var locationType: String? {
          get {
            return snapshot["locationType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "locationType")
          }
        }

        public var `optional`: Bool? {
          get {
            return snapshot["optional"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "optional")
          }
        }

        public var resultResetable: Bool? {
          get {
            return snapshot["resultResetable"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "resultResetable")
          }
        }

        public var startDate: String? {
          get {
            return snapshot["startDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var subtype: String? {
          get {
            return snapshot["subtype"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "subtype")
          }
        }

        public var summary: String? {
          get {
            return snapshot["summary"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "summary")
          }
        }

        public var targetActiveBurnedEnergy: Int? {
          get {
            return snapshot["targetActiveBurnedEnergy"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
          }
        }

        public var targetDistance: Int? {
          get {
            return snapshot["targetDistance"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "targetDistance")
          }
        }

        public var targetHeartRate: Int? {
          get {
            return snapshot["targetHeartRate"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "targetHeartRate")
          }
        }

        public var targetSteps: Int? {
          get {
            return snapshot["targetSteps"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "targetSteps")
          }
        }

        public var targetTime: Int? {
          get {
            return snapshot["targetTime"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "targetTime")
          }
        }

        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var workoutType: WorkoutType? {
          get {
            return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
          }
        }

        public var schedule: Schedule? {
          get {
            return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
          }
        }

        public var patient: Patient? {
          get {
            return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "patient")
          }
        }

        public var event: Event? {
          get {
            return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "event")
          }
        }

        public struct WorkoutType: GraphQLSelectionSet {
          public static let possibleTypes = ["WorkoutType"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("category", type: .scalar(String.self)),
            GraphQLField("id", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(category: String? = nil, id: String? = nil, name: String? = nil) {
            self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var category: String? {
            get {
              return snapshot["category"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "category")
            }
          }

          public var id: String? {
            get {
              return snapshot["id"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Schedule: GraphQLSelectionSet {
          public static let possibleTypes = ["Schedule"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("endDate", type: .scalar(String.self)),
            GraphQLField("skip", type: .scalar(Int.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("frequency", type: .list(.scalar(Int.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
            self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var endDate: String? {
            get {
              return snapshot["endDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var skip: Int? {
            get {
              return snapshot["skip"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "skip")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var frequency: [Int?]? {
            get {
              return snapshot["frequency"] as? [Int?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "frequency")
            }
          }
        }

        public struct Patient: GraphQLSelectionSet {
          public static let possibleTypes = ["Patient"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("categories", type: .scalar(String.self)),
            GraphQLField("color", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("detailedInfo", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("emailVerified", type: .scalar(Bool.self)),
            GraphQLField("imageURL", type: .scalar(String.self)),
            GraphQLField("monogram", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("password", type: .scalar(String.self)),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
            GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
            GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
            self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var categories: String? {
            get {
              return snapshot["categories"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "categories")
            }
          }

          public var color: String? {
            get {
              return snapshot["color"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "color")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var detailedInfo: String? {
            get {
              return snapshot["detailedInfo"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "detailedInfo")
            }
          }

          public var email: String? {
            get {
              return snapshot["email"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var emailVerified: Bool? {
            get {
              return snapshot["emailVerified"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "emailVerified")
            }
          }

          public var imageUrl: String? {
            get {
              return snapshot["imageURL"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "imageURL")
            }
          }

          public var monogram: String? {
            get {
              return snapshot["monogram"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "monogram")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var password: String? {
            get {
              return snapshot["password"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "password")
            }
          }

          public var userName: String? {
            get {
              return snapshot["userName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userName")
            }
          }

          public var vo2Max: Vo2Max? {
            get {
              return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
            }
          }

          public var heartRateVariability: HeartRateVariability? {
            get {
              return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
            }
          }

          public var careTeamContact: CareTeamContact? {
            get {
              return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
            }
          }

          public struct Vo2Max: GraphQLSelectionSet {
            public static let possibleTypes = ["Vo2Max"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("recordedAt", type: .scalar(String.self)),
              GraphQLField("value", type: .scalar(Double.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
              self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }

            public var value: Double? {
              get {
                return snapshot["value"] as? Double
              }
              set {
                snapshot.updateValue(newValue, forKey: "value")
              }
            }
          }

          public struct HeartRateVariability: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRateVariability"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("recordedAt", type: .scalar(String.self)),
              GraphQLField("value", type: .scalar(Double.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
              self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }

            public var value: Double? {
              get {
                return snapshot["value"] as? Double
              }
              set {
                snapshot.updateValue(newValue, forKey: "value")
              }
            }
          }

          public struct CareTeamContact: GraphQLSelectionSet {
            public static let possibleTypes = ["CareTeamContact"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("relation", type: .scalar(String.self)),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("items", type: .object(Item.selections)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
              self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var name: String? {
              get {
                return snapshot["name"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var relation: String? {
              get {
                return snapshot["relation"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "relation")
              }
            }

            public var type: String? {
              get {
                return snapshot["type"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "type")
              }
            }

            public var items: Item? {
              get {
                return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
              }
              set {
                snapshot.updateValue(newValue?.snapshot, forKey: "items")
              }
            }

            public struct Item: GraphQLSelectionSet {
              public static let possibleTypes = ["Items"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("email", type: .scalar(String.self)),
                GraphQLField("phone", type: .scalar(String.self)),
                GraphQLField("sms", type: .scalar(String.self)),
              ]

              public var snapshot: Snapshot

              public init(snapshot: Snapshot) {
                self.snapshot = snapshot
              }

              public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
                self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
              }

              public var __typename: String {
                get {
                  return snapshot["__typename"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "__typename")
                }
              }

              public var email: String? {
                get {
                  return snapshot["email"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "email")
                }
              }

              public var phone: String? {
                get {
                  return snapshot["phone"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "phone")
                }
              }

              public var sms: String? {
                get {
                  return snapshot["sms"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "sms")
                }
              }
            }
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["Event"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
            GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
            GraphQLField("state", type: .scalar(Int.self)),
            GraphQLField("attempt", type: .list(.object(Attempt.selections))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
            self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var numberOfDaysSinceStart: Int? {
            get {
              return snapshot["numberOfDaysSinceStart"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
            }
          }

          public var occurrenceIndexofDay: Int? {
            get {
              return snapshot["occurrenceIndexofDay"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
            }
          }

          public var state: Int? {
            get {
              return snapshot["state"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "state")
            }
          }

          public var attempt: [Attempt?]? {
            get {
              return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
            }
          }

          public struct Attempt: GraphQLSelectionSet {
            public static let possibleTypes = ["Attempt"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
              GraphQLField("borgScale", type: .scalar(String.self)),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("distance", type: .scalar(Int.self)),
              GraphQLField("heartRateCount", type: .scalar(Int.self)),
              GraphQLField("heartRateReport", type: .scalar(String.self)),
              GraphQLField("steps", type: .scalar(Int.self)),
              GraphQLField("time", type: .scalar(Int.self)),
              GraphQLField("workoutAssessment", type: .scalar(String.self)),
              GraphQLField("heartRate", type: .object(HeartRate.selections)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
              self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var activeEnergyBurned: Int? {
              get {
                return snapshot["activeEnergyBurned"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
              }
            }

            public var borgScale: String? {
              get {
                return snapshot["borgScale"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "borgScale")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var distance: Int? {
              get {
                return snapshot["distance"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "distance")
              }
            }

            public var heartRateCount: Int? {
              get {
                return snapshot["heartRateCount"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateCount")
              }
            }

            public var heartRateReport: String? {
              get {
                return snapshot["heartRateReport"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateReport")
              }
            }

            public var steps: Int? {
              get {
                return snapshot["steps"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "steps")
              }
            }

            public var time: Int? {
              get {
                return snapshot["time"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "time")
              }
            }

            public var workoutAssessment: String? {
              get {
                return snapshot["workoutAssessment"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "workoutAssessment")
              }
            }

            public var heartRate: HeartRate? {
              get {
                return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
              }
              set {
                snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
              }
            }

            public struct HeartRate: GraphQLSelectionSet {
              public static let possibleTypes = ["HeartRate"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("createdAt", type: .scalar(String.self)),
                GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
                GraphQLField("recordedAt", type: .scalar(String.self)),
              ]

              public var snapshot: Snapshot

              public init(snapshot: Snapshot) {
                self.snapshot = snapshot
              }

              public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
                self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
              }

              public var __typename: String {
                get {
                  return snapshot["__typename"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "__typename")
                }
              }

              public var createdAt: String? {
                get {
                  return snapshot["createdAt"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "createdAt")
                }
              }

              public var heartRateValue: [Double?]? {
                get {
                  return snapshot["heartRateValue"] as? [Double?]
                }
                set {
                  snapshot.updateValue(newValue, forKey: "heartRateValue")
                }
              }

              public var recordedAt: String? {
                get {
                  return snapshot["recordedAt"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "recordedAt")
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class OnCreateTbIcareSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTbIcare {\n  onCreateTBIcare {\n    __typename\n    id\n    color\n    createdAt\n    groupId\n    imageURL\n    instructions\n    locationType\n    optional\n    resultResetable\n    startDate\n    subtype\n    summary\n    targetActiveBurnedEnergy\n    targetDistance\n    targetHeartRate\n    targetSteps\n    targetTime\n    text\n    title\n    type\n    updatedAt\n    workoutType {\n      __typename\n      category\n      id\n      name\n    }\n    schedule {\n      __typename\n      createdAt\n      endDate\n      skip\n      type\n      frequency\n    }\n    patient {\n      __typename\n      categories\n      color\n      createdAt\n      detailedInfo\n      email\n      emailVerified\n      imageURL\n      monogram\n      name\n      password\n      userName\n      vo2Max {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      heartRateVariability {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      careTeamContact {\n        __typename\n        name\n        relation\n        type\n        items {\n          __typename\n          email\n          phone\n          sms\n        }\n      }\n    }\n    event {\n      __typename\n      createdAt\n      numberOfDaysSinceStart\n      occurrenceIndexofDay\n      state\n      attempt {\n        __typename\n        activeEnergyBurned\n        borgScale\n        createdAt\n        distance\n        heartRateCount\n        heartRateReport\n        steps\n        time\n        workoutAssessment\n        heartRate {\n          __typename\n          createdAt\n          heartRateValue\n          recordedAt\n        }\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTBIcare", type: .object(OnCreateTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTbIcare: OnCreateTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTBIcare": onCreateTbIcare.flatMap { $0.snapshot }])
    }

    public var onCreateTbIcare: OnCreateTbIcare? {
      get {
        return (snapshot["onCreateTBIcare"] as? Snapshot).flatMap { OnCreateTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTBIcare")
      }
    }

    public struct OnCreateTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["TBIcare"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("color", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("groupId", type: .scalar(String.self)),
        GraphQLField("imageURL", type: .scalar(String.self)),
        GraphQLField("instructions", type: .scalar(String.self)),
        GraphQLField("locationType", type: .scalar(String.self)),
        GraphQLField("optional", type: .scalar(Bool.self)),
        GraphQLField("resultResetable", type: .scalar(Bool.self)),
        GraphQLField("startDate", type: .scalar(String.self)),
        GraphQLField("subtype", type: .scalar(String.self)),
        GraphQLField("summary", type: .scalar(String.self)),
        GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
        GraphQLField("targetDistance", type: .scalar(Int.self)),
        GraphQLField("targetHeartRate", type: .scalar(Int.self)),
        GraphQLField("targetSteps", type: .scalar(Int.self)),
        GraphQLField("targetTime", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("workoutType", type: .object(WorkoutType.selections)),
        GraphQLField("schedule", type: .object(Schedule.selections)),
        GraphQLField("patient", type: .object(Patient.selections)),
        GraphQLField("event", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
        self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var groupId: String? {
        get {
          return snapshot["groupId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "groupId")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var instructions: String? {
        get {
          return snapshot["instructions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "instructions")
        }
      }

      public var locationType: String? {
        get {
          return snapshot["locationType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "locationType")
        }
      }

      public var `optional`: Bool? {
        get {
          return snapshot["optional"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "optional")
        }
      }

      public var resultResetable: Bool? {
        get {
          return snapshot["resultResetable"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "resultResetable")
        }
      }

      public var startDate: String? {
        get {
          return snapshot["startDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var subtype: String? {
        get {
          return snapshot["subtype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subtype")
        }
      }

      public var summary: String? {
        get {
          return snapshot["summary"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "summary")
        }
      }

      public var targetActiveBurnedEnergy: Int? {
        get {
          return snapshot["targetActiveBurnedEnergy"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
        }
      }

      public var targetDistance: Int? {
        get {
          return snapshot["targetDistance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetDistance")
        }
      }

      public var targetHeartRate: Int? {
        get {
          return snapshot["targetHeartRate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetHeartRate")
        }
      }

      public var targetSteps: Int? {
        get {
          return snapshot["targetSteps"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetSteps")
        }
      }

      public var targetTime: Int? {
        get {
          return snapshot["targetTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetTime")
        }
      }

      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var workoutType: WorkoutType? {
        get {
          return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
        }
      }

      public var schedule: Schedule? {
        get {
          return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
        }
      }

      public var patient: Patient? {
        get {
          return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "patient")
        }
      }

      public var event: Event? {
        get {
          return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "event")
        }
      }

      public struct WorkoutType: GraphQLSelectionSet {
        public static let possibleTypes = ["WorkoutType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, id: String? = nil, name: String? = nil) {
          self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes = ["Schedule"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("endDate", type: .scalar(String.self)),
          GraphQLField("skip", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("frequency", type: .list(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
          self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var endDate: String? {
          get {
            return snapshot["endDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var skip: Int? {
          get {
            return snapshot["skip"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "skip")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var frequency: [Int?]? {
          get {
            return snapshot["frequency"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "frequency")
          }
        }
      }

      public struct Patient: GraphQLSelectionSet {
        public static let possibleTypes = ["Patient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categories", type: .scalar(String.self)),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("detailedInfo", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("monogram", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
          GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
          GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
          self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var categories: String? {
          get {
            return snapshot["categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categories")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var detailedInfo: String? {
          get {
            return snapshot["detailedInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "detailedInfo")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var emailVerified: Bool? {
          get {
            return snapshot["emailVerified"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailVerified")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var monogram: String? {
          get {
            return snapshot["monogram"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "monogram")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var vo2Max: Vo2Max? {
          get {
            return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
          }
        }

        public var heartRateVariability: HeartRateVariability? {
          get {
            return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
          }
        }

        public var careTeamContact: CareTeamContact? {
          get {
            return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
          }
        }

        public struct Vo2Max: GraphQLSelectionSet {
          public static let possibleTypes = ["Vo2Max"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct HeartRateVariability: GraphQLSelectionSet {
          public static let possibleTypes = ["HeartRateVariability"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct CareTeamContact: GraphQLSelectionSet {
          public static let possibleTypes = ["CareTeamContact"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("relation", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("items", type: .object(Item.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
            self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var relation: String? {
            get {
              return snapshot["relation"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "relation")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var items: Item? {
            get {
              return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "items")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Items"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phone", type: .scalar(String.self)),
              GraphQLField("sms", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
              self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var email: String? {
              get {
                return snapshot["email"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "email")
              }
            }

            public var phone: String? {
              get {
                return snapshot["phone"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "phone")
              }
            }

            public var sms: String? {
              get {
                return snapshot["sms"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sms")
              }
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
          GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
          GraphQLField("state", type: .scalar(Int.self)),
          GraphQLField("attempt", type: .list(.object(Attempt.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
          self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var numberOfDaysSinceStart: Int? {
          get {
            return snapshot["numberOfDaysSinceStart"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
          }
        }

        public var occurrenceIndexofDay: Int? {
          get {
            return snapshot["occurrenceIndexofDay"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
          }
        }

        public var state: Int? {
          get {
            return snapshot["state"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var attempt: [Attempt?]? {
          get {
            return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
          }
        }

        public struct Attempt: GraphQLSelectionSet {
          public static let possibleTypes = ["Attempt"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
            GraphQLField("borgScale", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("distance", type: .scalar(Int.self)),
            GraphQLField("heartRateCount", type: .scalar(Int.self)),
            GraphQLField("heartRateReport", type: .scalar(String.self)),
            GraphQLField("steps", type: .scalar(Int.self)),
            GraphQLField("time", type: .scalar(Int.self)),
            GraphQLField("workoutAssessment", type: .scalar(String.self)),
            GraphQLField("heartRate", type: .object(HeartRate.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
            self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var activeEnergyBurned: Int? {
            get {
              return snapshot["activeEnergyBurned"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
            }
          }

          public var borgScale: String? {
            get {
              return snapshot["borgScale"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "borgScale")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var distance: Int? {
            get {
              return snapshot["distance"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "distance")
            }
          }

          public var heartRateCount: Int? {
            get {
              return snapshot["heartRateCount"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateCount")
            }
          }

          public var heartRateReport: String? {
            get {
              return snapshot["heartRateReport"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateReport")
            }
          }

          public var steps: Int? {
            get {
              return snapshot["steps"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "steps")
            }
          }

          public var time: Int? {
            get {
              return snapshot["time"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var workoutAssessment: String? {
            get {
              return snapshot["workoutAssessment"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "workoutAssessment")
            }
          }

          public var heartRate: HeartRate? {
            get {
              return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
            }
          }

          public struct HeartRate: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRate"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
              GraphQLField("recordedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
              self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var heartRateValue: [Double?]? {
              get {
                return snapshot["heartRateValue"] as? [Double?]
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateValue")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateTbIcareSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTbIcare {\n  onUpdateTBIcare {\n    __typename\n    id\n    color\n    createdAt\n    groupId\n    imageURL\n    instructions\n    locationType\n    optional\n    resultResetable\n    startDate\n    subtype\n    summary\n    targetActiveBurnedEnergy\n    targetDistance\n    targetHeartRate\n    targetSteps\n    targetTime\n    text\n    title\n    type\n    updatedAt\n    workoutType {\n      __typename\n      category\n      id\n      name\n    }\n    schedule {\n      __typename\n      createdAt\n      endDate\n      skip\n      type\n      frequency\n    }\n    patient {\n      __typename\n      categories\n      color\n      createdAt\n      detailedInfo\n      email\n      emailVerified\n      imageURL\n      monogram\n      name\n      password\n      userName\n      vo2Max {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      heartRateVariability {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      careTeamContact {\n        __typename\n        name\n        relation\n        type\n        items {\n          __typename\n          email\n          phone\n          sms\n        }\n      }\n    }\n    event {\n      __typename\n      createdAt\n      numberOfDaysSinceStart\n      occurrenceIndexofDay\n      state\n      attempt {\n        __typename\n        activeEnergyBurned\n        borgScale\n        createdAt\n        distance\n        heartRateCount\n        heartRateReport\n        steps\n        time\n        workoutAssessment\n        heartRate {\n          __typename\n          createdAt\n          heartRateValue\n          recordedAt\n        }\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTBIcare", type: .object(OnUpdateTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTbIcare: OnUpdateTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTBIcare": onUpdateTbIcare.flatMap { $0.snapshot }])
    }

    public var onUpdateTbIcare: OnUpdateTbIcare? {
      get {
        return (snapshot["onUpdateTBIcare"] as? Snapshot).flatMap { OnUpdateTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTBIcare")
      }
    }

    public struct OnUpdateTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["TBIcare"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("color", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("groupId", type: .scalar(String.self)),
        GraphQLField("imageURL", type: .scalar(String.self)),
        GraphQLField("instructions", type: .scalar(String.self)),
        GraphQLField("locationType", type: .scalar(String.self)),
        GraphQLField("optional", type: .scalar(Bool.self)),
        GraphQLField("resultResetable", type: .scalar(Bool.self)),
        GraphQLField("startDate", type: .scalar(String.self)),
        GraphQLField("subtype", type: .scalar(String.self)),
        GraphQLField("summary", type: .scalar(String.self)),
        GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
        GraphQLField("targetDistance", type: .scalar(Int.self)),
        GraphQLField("targetHeartRate", type: .scalar(Int.self)),
        GraphQLField("targetSteps", type: .scalar(Int.self)),
        GraphQLField("targetTime", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("workoutType", type: .object(WorkoutType.selections)),
        GraphQLField("schedule", type: .object(Schedule.selections)),
        GraphQLField("patient", type: .object(Patient.selections)),
        GraphQLField("event", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
        self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var groupId: String? {
        get {
          return snapshot["groupId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "groupId")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var instructions: String? {
        get {
          return snapshot["instructions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "instructions")
        }
      }

      public var locationType: String? {
        get {
          return snapshot["locationType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "locationType")
        }
      }

      public var `optional`: Bool? {
        get {
          return snapshot["optional"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "optional")
        }
      }

      public var resultResetable: Bool? {
        get {
          return snapshot["resultResetable"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "resultResetable")
        }
      }

      public var startDate: String? {
        get {
          return snapshot["startDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var subtype: String? {
        get {
          return snapshot["subtype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subtype")
        }
      }

      public var summary: String? {
        get {
          return snapshot["summary"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "summary")
        }
      }

      public var targetActiveBurnedEnergy: Int? {
        get {
          return snapshot["targetActiveBurnedEnergy"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
        }
      }

      public var targetDistance: Int? {
        get {
          return snapshot["targetDistance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetDistance")
        }
      }

      public var targetHeartRate: Int? {
        get {
          return snapshot["targetHeartRate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetHeartRate")
        }
      }

      public var targetSteps: Int? {
        get {
          return snapshot["targetSteps"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetSteps")
        }
      }

      public var targetTime: Int? {
        get {
          return snapshot["targetTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetTime")
        }
      }

      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var workoutType: WorkoutType? {
        get {
          return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
        }
      }

      public var schedule: Schedule? {
        get {
          return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
        }
      }

      public var patient: Patient? {
        get {
          return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "patient")
        }
      }

      public var event: Event? {
        get {
          return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "event")
        }
      }

      public struct WorkoutType: GraphQLSelectionSet {
        public static let possibleTypes = ["WorkoutType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, id: String? = nil, name: String? = nil) {
          self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes = ["Schedule"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("endDate", type: .scalar(String.self)),
          GraphQLField("skip", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("frequency", type: .list(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
          self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var endDate: String? {
          get {
            return snapshot["endDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var skip: Int? {
          get {
            return snapshot["skip"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "skip")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var frequency: [Int?]? {
          get {
            return snapshot["frequency"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "frequency")
          }
        }
      }

      public struct Patient: GraphQLSelectionSet {
        public static let possibleTypes = ["Patient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categories", type: .scalar(String.self)),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("detailedInfo", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("monogram", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
          GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
          GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
          self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var categories: String? {
          get {
            return snapshot["categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categories")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var detailedInfo: String? {
          get {
            return snapshot["detailedInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "detailedInfo")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var emailVerified: Bool? {
          get {
            return snapshot["emailVerified"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailVerified")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var monogram: String? {
          get {
            return snapshot["monogram"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "monogram")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var vo2Max: Vo2Max? {
          get {
            return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
          }
        }

        public var heartRateVariability: HeartRateVariability? {
          get {
            return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
          }
        }

        public var careTeamContact: CareTeamContact? {
          get {
            return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
          }
        }

        public struct Vo2Max: GraphQLSelectionSet {
          public static let possibleTypes = ["Vo2Max"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct HeartRateVariability: GraphQLSelectionSet {
          public static let possibleTypes = ["HeartRateVariability"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct CareTeamContact: GraphQLSelectionSet {
          public static let possibleTypes = ["CareTeamContact"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("relation", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("items", type: .object(Item.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
            self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var relation: String? {
            get {
              return snapshot["relation"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "relation")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var items: Item? {
            get {
              return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "items")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Items"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phone", type: .scalar(String.self)),
              GraphQLField("sms", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
              self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var email: String? {
              get {
                return snapshot["email"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "email")
              }
            }

            public var phone: String? {
              get {
                return snapshot["phone"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "phone")
              }
            }

            public var sms: String? {
              get {
                return snapshot["sms"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sms")
              }
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
          GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
          GraphQLField("state", type: .scalar(Int.self)),
          GraphQLField("attempt", type: .list(.object(Attempt.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
          self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var numberOfDaysSinceStart: Int? {
          get {
            return snapshot["numberOfDaysSinceStart"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
          }
        }

        public var occurrenceIndexofDay: Int? {
          get {
            return snapshot["occurrenceIndexofDay"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
          }
        }

        public var state: Int? {
          get {
            return snapshot["state"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var attempt: [Attempt?]? {
          get {
            return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
          }
        }

        public struct Attempt: GraphQLSelectionSet {
          public static let possibleTypes = ["Attempt"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
            GraphQLField("borgScale", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("distance", type: .scalar(Int.self)),
            GraphQLField("heartRateCount", type: .scalar(Int.self)),
            GraphQLField("heartRateReport", type: .scalar(String.self)),
            GraphQLField("steps", type: .scalar(Int.self)),
            GraphQLField("time", type: .scalar(Int.self)),
            GraphQLField("workoutAssessment", type: .scalar(String.self)),
            GraphQLField("heartRate", type: .object(HeartRate.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
            self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var activeEnergyBurned: Int? {
            get {
              return snapshot["activeEnergyBurned"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
            }
          }

          public var borgScale: String? {
            get {
              return snapshot["borgScale"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "borgScale")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var distance: Int? {
            get {
              return snapshot["distance"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "distance")
            }
          }

          public var heartRateCount: Int? {
            get {
              return snapshot["heartRateCount"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateCount")
            }
          }

          public var heartRateReport: String? {
            get {
              return snapshot["heartRateReport"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateReport")
            }
          }

          public var steps: Int? {
            get {
              return snapshot["steps"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "steps")
            }
          }

          public var time: Int? {
            get {
              return snapshot["time"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var workoutAssessment: String? {
            get {
              return snapshot["workoutAssessment"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "workoutAssessment")
            }
          }

          public var heartRate: HeartRate? {
            get {
              return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
            }
          }

          public struct HeartRate: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRate"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
              GraphQLField("recordedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
              self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var heartRateValue: [Double?]? {
              get {
                return snapshot["heartRateValue"] as? [Double?]
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateValue")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteTbIcareSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTbIcare {\n  onDeleteTBIcare {\n    __typename\n    id\n    color\n    createdAt\n    groupId\n    imageURL\n    instructions\n    locationType\n    optional\n    resultResetable\n    startDate\n    subtype\n    summary\n    targetActiveBurnedEnergy\n    targetDistance\n    targetHeartRate\n    targetSteps\n    targetTime\n    text\n    title\n    type\n    updatedAt\n    workoutType {\n      __typename\n      category\n      id\n      name\n    }\n    schedule {\n      __typename\n      createdAt\n      endDate\n      skip\n      type\n      frequency\n    }\n    patient {\n      __typename\n      categories\n      color\n      createdAt\n      detailedInfo\n      email\n      emailVerified\n      imageURL\n      monogram\n      name\n      password\n      userName\n      vo2Max {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      heartRateVariability {\n        __typename\n        createdAt\n        recordedAt\n        value\n      }\n      careTeamContact {\n        __typename\n        name\n        relation\n        type\n        items {\n          __typename\n          email\n          phone\n          sms\n        }\n      }\n    }\n    event {\n      __typename\n      createdAt\n      numberOfDaysSinceStart\n      occurrenceIndexofDay\n      state\n      attempt {\n        __typename\n        activeEnergyBurned\n        borgScale\n        createdAt\n        distance\n        heartRateCount\n        heartRateReport\n        steps\n        time\n        workoutAssessment\n        heartRate {\n          __typename\n          createdAt\n          heartRateValue\n          recordedAt\n        }\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTBIcare", type: .object(OnDeleteTbIcare.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTbIcare: OnDeleteTbIcare? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTBIcare": onDeleteTbIcare.flatMap { $0.snapshot }])
    }

    public var onDeleteTbIcare: OnDeleteTbIcare? {
      get {
        return (snapshot["onDeleteTBIcare"] as? Snapshot).flatMap { OnDeleteTbIcare(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTBIcare")
      }
    }

    public struct OnDeleteTbIcare: GraphQLSelectionSet {
      public static let possibleTypes = ["TBIcare"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("color", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("groupId", type: .scalar(String.self)),
        GraphQLField("imageURL", type: .scalar(String.self)),
        GraphQLField("instructions", type: .scalar(String.self)),
        GraphQLField("locationType", type: .scalar(String.self)),
        GraphQLField("optional", type: .scalar(Bool.self)),
        GraphQLField("resultResetable", type: .scalar(Bool.self)),
        GraphQLField("startDate", type: .scalar(String.self)),
        GraphQLField("subtype", type: .scalar(String.self)),
        GraphQLField("summary", type: .scalar(String.self)),
        GraphQLField("targetActiveBurnedEnergy", type: .scalar(Int.self)),
        GraphQLField("targetDistance", type: .scalar(Int.self)),
        GraphQLField("targetHeartRate", type: .scalar(Int.self)),
        GraphQLField("targetSteps", type: .scalar(Int.self)),
        GraphQLField("targetTime", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("workoutType", type: .object(WorkoutType.selections)),
        GraphQLField("schedule", type: .object(Schedule.selections)),
        GraphQLField("patient", type: .object(Patient.selections)),
        GraphQLField("event", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, color: String? = nil, createdAt: String? = nil, groupId: String? = nil, imageUrl: String? = nil, instructions: String? = nil, locationType: String? = nil, `optional`: Bool? = nil, resultResetable: Bool? = nil, startDate: String? = nil, subtype: String? = nil, summary: String? = nil, targetActiveBurnedEnergy: Int? = nil, targetDistance: Int? = nil, targetHeartRate: Int? = nil, targetSteps: Int? = nil, targetTime: Int? = nil, text: String? = nil, title: String? = nil, type: String? = nil, updatedAt: String? = nil, workoutType: WorkoutType? = nil, schedule: Schedule? = nil, patient: Patient? = nil, event: Event? = nil) {
        self.init(snapshot: ["__typename": "TBIcare", "id": id, "color": color, "createdAt": createdAt, "groupId": groupId, "imageURL": imageUrl, "instructions": instructions, "locationType": locationType, "optional": `optional`, "resultResetable": resultResetable, "startDate": startDate, "subtype": subtype, "summary": summary, "targetActiveBurnedEnergy": targetActiveBurnedEnergy, "targetDistance": targetDistance, "targetHeartRate": targetHeartRate, "targetSteps": targetSteps, "targetTime": targetTime, "text": text, "title": title, "type": type, "updatedAt": updatedAt, "workoutType": workoutType.flatMap { $0.snapshot }, "schedule": schedule.flatMap { $0.snapshot }, "patient": patient.flatMap { $0.snapshot }, "event": event.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var groupId: String? {
        get {
          return snapshot["groupId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "groupId")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var instructions: String? {
        get {
          return snapshot["instructions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "instructions")
        }
      }

      public var locationType: String? {
        get {
          return snapshot["locationType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "locationType")
        }
      }

      public var `optional`: Bool? {
        get {
          return snapshot["optional"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "optional")
        }
      }

      public var resultResetable: Bool? {
        get {
          return snapshot["resultResetable"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "resultResetable")
        }
      }

      public var startDate: String? {
        get {
          return snapshot["startDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var subtype: String? {
        get {
          return snapshot["subtype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subtype")
        }
      }

      public var summary: String? {
        get {
          return snapshot["summary"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "summary")
        }
      }

      public var targetActiveBurnedEnergy: Int? {
        get {
          return snapshot["targetActiveBurnedEnergy"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetActiveBurnedEnergy")
        }
      }

      public var targetDistance: Int? {
        get {
          return snapshot["targetDistance"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetDistance")
        }
      }

      public var targetHeartRate: Int? {
        get {
          return snapshot["targetHeartRate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetHeartRate")
        }
      }

      public var targetSteps: Int? {
        get {
          return snapshot["targetSteps"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetSteps")
        }
      }

      public var targetTime: Int? {
        get {
          return snapshot["targetTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "targetTime")
        }
      }

      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var workoutType: WorkoutType? {
        get {
          return (snapshot["workoutType"] as? Snapshot).flatMap { WorkoutType(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "workoutType")
        }
      }

      public var schedule: Schedule? {
        get {
          return (snapshot["schedule"] as? Snapshot).flatMap { Schedule(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "schedule")
        }
      }

      public var patient: Patient? {
        get {
          return (snapshot["patient"] as? Snapshot).flatMap { Patient(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "patient")
        }
      }

      public var event: Event? {
        get {
          return (snapshot["event"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "event")
        }
      }

      public struct WorkoutType: GraphQLSelectionSet {
        public static let possibleTypes = ["WorkoutType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, id: String? = nil, name: String? = nil) {
          self.init(snapshot: ["__typename": "WorkoutType", "category": category, "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes = ["Schedule"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("endDate", type: .scalar(String.self)),
          GraphQLField("skip", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("frequency", type: .list(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, endDate: String? = nil, skip: Int? = nil, type: String? = nil, frequency: [Int?]? = nil) {
          self.init(snapshot: ["__typename": "Schedule", "createdAt": createdAt, "endDate": endDate, "skip": skip, "type": type, "frequency": frequency])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var endDate: String? {
          get {
            return snapshot["endDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var skip: Int? {
          get {
            return snapshot["skip"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "skip")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var frequency: [Int?]? {
          get {
            return snapshot["frequency"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "frequency")
          }
        }
      }

      public struct Patient: GraphQLSelectionSet {
        public static let possibleTypes = ["Patient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categories", type: .scalar(String.self)),
          GraphQLField("color", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("detailedInfo", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("imageURL", type: .scalar(String.self)),
          GraphQLField("monogram", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("vo2Max", type: .object(Vo2Max.selections)),
          GraphQLField("heartRateVariability", type: .object(HeartRateVariability.selections)),
          GraphQLField("careTeamContact", type: .object(CareTeamContact.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(categories: String? = nil, color: String? = nil, createdAt: String? = nil, detailedInfo: String? = nil, email: String? = nil, emailVerified: Bool? = nil, imageUrl: String? = nil, monogram: String? = nil, name: String? = nil, password: String? = nil, userName: String? = nil, vo2Max: Vo2Max? = nil, heartRateVariability: HeartRateVariability? = nil, careTeamContact: CareTeamContact? = nil) {
          self.init(snapshot: ["__typename": "Patient", "categories": categories, "color": color, "createdAt": createdAt, "detailedInfo": detailedInfo, "email": email, "emailVerified": emailVerified, "imageURL": imageUrl, "monogram": monogram, "name": name, "password": password, "userName": userName, "vo2Max": vo2Max.flatMap { $0.snapshot }, "heartRateVariability": heartRateVariability.flatMap { $0.snapshot }, "careTeamContact": careTeamContact.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var categories: String? {
          get {
            return snapshot["categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categories")
          }
        }

        public var color: String? {
          get {
            return snapshot["color"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "color")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var detailedInfo: String? {
          get {
            return snapshot["detailedInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "detailedInfo")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var emailVerified: Bool? {
          get {
            return snapshot["emailVerified"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailVerified")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var monogram: String? {
          get {
            return snapshot["monogram"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "monogram")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var userName: String? {
          get {
            return snapshot["userName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var vo2Max: Vo2Max? {
          get {
            return (snapshot["vo2Max"] as? Snapshot).flatMap { Vo2Max(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "vo2Max")
          }
        }

        public var heartRateVariability: HeartRateVariability? {
          get {
            return (snapshot["heartRateVariability"] as? Snapshot).flatMap { HeartRateVariability(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "heartRateVariability")
          }
        }

        public var careTeamContact: CareTeamContact? {
          get {
            return (snapshot["careTeamContact"] as? Snapshot).flatMap { CareTeamContact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "careTeamContact")
          }
        }

        public struct Vo2Max: GraphQLSelectionSet {
          public static let possibleTypes = ["Vo2Max"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "Vo2Max", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct HeartRateVariability: GraphQLSelectionSet {
          public static let possibleTypes = ["HeartRateVariability"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("recordedAt", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Double.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String? = nil, recordedAt: String? = nil, value: Double? = nil) {
            self.init(snapshot: ["__typename": "HeartRateVariability", "createdAt": createdAt, "recordedAt": recordedAt, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var recordedAt: String? {
            get {
              return snapshot["recordedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "recordedAt")
            }
          }

          public var value: Double? {
            get {
              return snapshot["value"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }

        public struct CareTeamContact: GraphQLSelectionSet {
          public static let possibleTypes = ["CareTeamContact"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("relation", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("items", type: .object(Item.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String? = nil, relation: String? = nil, type: String? = nil, items: Item? = nil) {
            self.init(snapshot: ["__typename": "CareTeamContact", "name": name, "relation": relation, "type": type, "items": items.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var relation: String? {
            get {
              return snapshot["relation"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "relation")
            }
          }

          public var type: String? {
            get {
              return snapshot["type"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var items: Item? {
            get {
              return (snapshot["items"] as? Snapshot).flatMap { Item(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "items")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Items"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phone", type: .scalar(String.self)),
              GraphQLField("sms", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(email: String? = nil, phone: String? = nil, sms: String? = nil) {
              self.init(snapshot: ["__typename": "Items", "email": email, "phone": phone, "sms": sms])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var email: String? {
              get {
                return snapshot["email"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "email")
              }
            }

            public var phone: String? {
              get {
                return snapshot["phone"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "phone")
              }
            }

            public var sms: String? {
              get {
                return snapshot["sms"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sms")
              }
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("numberOfDaysSinceStart", type: .scalar(Int.self)),
          GraphQLField("occurrenceIndexofDay", type: .scalar(Int.self)),
          GraphQLField("state", type: .scalar(Int.self)),
          GraphQLField("attempt", type: .list(.object(Attempt.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAt: String? = nil, numberOfDaysSinceStart: Int? = nil, occurrenceIndexofDay: Int? = nil, state: Int? = nil, attempt: [Attempt?]? = nil) {
          self.init(snapshot: ["__typename": "Event", "createdAt": createdAt, "numberOfDaysSinceStart": numberOfDaysSinceStart, "occurrenceIndexofDay": occurrenceIndexofDay, "state": state, "attempt": attempt.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var numberOfDaysSinceStart: Int? {
          get {
            return snapshot["numberOfDaysSinceStart"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "numberOfDaysSinceStart")
          }
        }

        public var occurrenceIndexofDay: Int? {
          get {
            return snapshot["occurrenceIndexofDay"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "occurrenceIndexofDay")
          }
        }

        public var state: Int? {
          get {
            return snapshot["state"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var attempt: [Attempt?]? {
          get {
            return (snapshot["attempt"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Attempt(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "attempt")
          }
        }

        public struct Attempt: GraphQLSelectionSet {
          public static let possibleTypes = ["Attempt"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("activeEnergyBurned", type: .scalar(Int.self)),
            GraphQLField("borgScale", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("distance", type: .scalar(Int.self)),
            GraphQLField("heartRateCount", type: .scalar(Int.self)),
            GraphQLField("heartRateReport", type: .scalar(String.self)),
            GraphQLField("steps", type: .scalar(Int.self)),
            GraphQLField("time", type: .scalar(Int.self)),
            GraphQLField("workoutAssessment", type: .scalar(String.self)),
            GraphQLField("heartRate", type: .object(HeartRate.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(activeEnergyBurned: Int? = nil, borgScale: String? = nil, createdAt: String? = nil, distance: Int? = nil, heartRateCount: Int? = nil, heartRateReport: String? = nil, steps: Int? = nil, time: Int? = nil, workoutAssessment: String? = nil, heartRate: HeartRate? = nil) {
            self.init(snapshot: ["__typename": "Attempt", "activeEnergyBurned": activeEnergyBurned, "borgScale": borgScale, "createdAt": createdAt, "distance": distance, "heartRateCount": heartRateCount, "heartRateReport": heartRateReport, "steps": steps, "time": time, "workoutAssessment": workoutAssessment, "heartRate": heartRate.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var activeEnergyBurned: Int? {
            get {
              return snapshot["activeEnergyBurned"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "activeEnergyBurned")
            }
          }

          public var borgScale: String? {
            get {
              return snapshot["borgScale"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "borgScale")
            }
          }

          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var distance: Int? {
            get {
              return snapshot["distance"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "distance")
            }
          }

          public var heartRateCount: Int? {
            get {
              return snapshot["heartRateCount"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateCount")
            }
          }

          public var heartRateReport: String? {
            get {
              return snapshot["heartRateReport"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "heartRateReport")
            }
          }

          public var steps: Int? {
            get {
              return snapshot["steps"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "steps")
            }
          }

          public var time: Int? {
            get {
              return snapshot["time"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var workoutAssessment: String? {
            get {
              return snapshot["workoutAssessment"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "workoutAssessment")
            }
          }

          public var heartRate: HeartRate? {
            get {
              return (snapshot["heartRate"] as? Snapshot).flatMap { HeartRate(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "heartRate")
            }
          }

          public struct HeartRate: GraphQLSelectionSet {
            public static let possibleTypes = ["HeartRate"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("heartRateValue", type: .list(.scalar(Double.self))),
              GraphQLField("recordedAt", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(createdAt: String? = nil, heartRateValue: [Double?]? = nil, recordedAt: String? = nil) {
              self.init(snapshot: ["__typename": "HeartRate", "createdAt": createdAt, "heartRateValue": heartRateValue, "recordedAt": recordedAt])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var createdAt: String? {
              get {
                return snapshot["createdAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var heartRateValue: [Double?]? {
              get {
                return snapshot["heartRateValue"] as? [Double?]
              }
              set {
                snapshot.updateValue(newValue, forKey: "heartRateValue")
              }
            }

            public var recordedAt: String? {
              get {
                return snapshot["recordedAt"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "recordedAt")
              }
            }
          }
        }
      }
    }
  }
}