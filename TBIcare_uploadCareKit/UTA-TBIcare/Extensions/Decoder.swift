//
//  Decoder.swift
//  QosoorApp
//
//  Created by Ammar AlTahhan on 01/06/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension JSONDecoder {
    convenience public init(keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys,
                            dateDecodingStrategy: JSONDecoder.DateDecodingStrategy) {
        self.init()
        self.keyDecodingStrategy = keyDecodingStrategy
        self.dateDecodingStrategy = dateDecodingStrategy
    }
}
