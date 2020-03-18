//
//  Patient.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/12/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import CareKit
import Kingfisher

struct Patient: Codable {
    let id: Int?
    let username, password, email: String?
    let emailVerified: Int?
    let name, detailInfo, color: String?
    let monogram: String?
    let imageURL: String?
    let categories: [String]?
    let activityID: Int?
    let token, tokenTimestamp, createdAt: String?
    let careTeamContacts: [CareTeamContact]?

    enum CodingKeys: String, CodingKey {
        case id, username, password, email
        case emailVerified = "email_verified"
        case name
        case detailInfo = "detail_info"
        case color, monogram
        case imageURL = "image_url"
        case categories
        case activityID = "activity_id"
        case token
        case tokenTimestamp = "token_timestamp"
        case createdAt = "created_at"
        case careTeamContacts = "care_team_contacts"
    }
    
    var ockPatient: OCKPatient {
        let contacts: [OCKContact] = careTeamContacts?.map({$0.ockContact}) ?? []
        return OCKPatient(identifier: "\(id ?? Int.random(in: -100000...0))",
            carePlanStore: CarePlanStoreManager.sharedCarePlanStoreManager.store,
            name: name ?? "(Missing)",
            detailInfo: detailInfo ?? "",
            careTeamContacts: contacts,
            tintColor: UIColor(hexString: color ?? ""),
            monogram: monogram ?? "",
            image: imageURL?.cachedImage,
            categories: categories,
            userInfo: nil)
    }
}
