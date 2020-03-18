//
//  CareTeam.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/12/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import CareKit


struct CareTeamContact: Codable {
    let type: Int?
    let name, relation: String?
    let contactItems: [ContactItem]?
    let color: String?
    let monogram: String?
    let imageUrl: String?
    let contactType: String?

    enum CodingKeys: String, CodingKey {
        case type, name, relation
        case contactItems = "contact_items"
        case color
        case monogram
        case imageUrl = "image_url"
        case contactType = "contact_type"
    }
    
    var ockContact: OCKContact {
        return OCKContact(contactType: OCKContactType(rawValue: type ?? 0) ?? .personal,
                          name: name ?? "(Missing)",
                          relation: relation ?? "",
                          contactInfoItems: contactItems?.map({$0.ockContctInfo}) ?? [],
                          tintColor: nil,
                          monogram: "",
                          image: imageUrl?.cachedImage)
    }
}


struct ContactItem: Codable {
    let id: Int?
    let type, value, createdAt: String?

    enum CodingKeys: String, CodingKey {
        case id, type, value
        case createdAt = "created_at"
    }
    
    var ockContctInfo: OCKContactInfo {
        let contactValue = value ?? ""
        switch (type ?? "").lowercased() {
        case "sms":
            return .sms(contactValue)
        case "email":
            return .email(contactValue)
        case "phone":
            return .phone(contactValue)
        case "facetimeaudio":
            return .facetimeAudio(contactValue, display: "FaceTime Audio")
        case "facetimevideo":
            return .facetimeVideo(contactValue, display: "FaceTime Video")
        default:
            return .phone("+1 (817) 501-7460")
        }
    }
}
