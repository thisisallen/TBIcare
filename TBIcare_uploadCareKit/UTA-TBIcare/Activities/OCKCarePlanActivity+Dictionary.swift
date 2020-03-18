//
//  OCKCarePlanActivity+Dictionary.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 21/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit

extension OCKCarePlanActivity {
    func asDictionary(numberOfEventsForToday: UInt) -> [String : Any] {
        var activityDictionary = [String: Any]()
        activityDictionary["identifier"] = self.identifier
        activityDictionary["title"] = self.title
        activityDictionary["isOptional"] = self.optional
        
        if self.type == .intervention {
            activityDictionary["isIntervention"] = true
        }
        else {
            activityDictionary["isIntervention"] = false
        }
        
        if self.text != nil {
            activityDictionary["text"] = self.text
        }
        
        if self.tintColor != nil {
            let colorsArray = self.tintColor?.cgColor.components
            if colorsArray != nil {
                activityDictionary["tintColor"] = [colorsArray![0], colorsArray![1], colorsArray![2], colorsArray![3]]
            }
        }
        
        activityDictionary["numberOfEventsForToday"] = numberOfEventsForToday
        
        return activityDictionary
    }
}
