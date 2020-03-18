//
//  Codable+Extensions.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 29/01/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension Encodable {
    var dictionary: [String: Any]? {
        let jsonEncoder = JSONEncoder()
        jsonEncoder.keyEncodingStrategy = .convertToSnakeCase
        jsonEncoder.dateEncodingStrategy = .formatted(DateFormatter(dateFormat: "yyyy-MM-dd HH:mm:ss"))
        guard let data = try? jsonEncoder.encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
