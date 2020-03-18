//
//  LoadingIndicator.swift
//  
//
//  Created by Ammar AlTahhan on 05/02/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit

/**
 Protocol that defines the properties and methods for sample activities.
 */
protocol ActivityProtocol {
    
//    var activitySubType: ActivitySubType { get }
    
    var carePlanActivity: OCKCarePlanActivity! { get }
    
//    func carePlanActivity() -> OCKCarePlanActivity
}
