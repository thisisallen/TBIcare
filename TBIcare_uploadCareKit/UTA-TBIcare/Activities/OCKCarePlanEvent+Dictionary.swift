//
//  OCKCarePlanEvent+Dictionary.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 21/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit

extension OCKCarePlanEvent {
    func asDictionary() -> [String : Any] {
        var eventDictionary = [String: Any]()
        eventDictionary["occurrenceIndexOfDay"] = self.occurrenceIndexOfDay
        eventDictionary["activityIdentifier"] = self.activity.identifier
        eventDictionary["state"] = self.state.rawValue
        return eventDictionary
    }
}
