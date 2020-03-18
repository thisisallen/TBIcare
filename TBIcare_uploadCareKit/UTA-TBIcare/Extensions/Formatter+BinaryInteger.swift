//
//  BinaryInteger.swift
//  QosoorApp
//
//  Created by Ammar AlTahhan on 30/08/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.currencySymbol = ""
        return formatter
    }()
}

extension BinaryInteger {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
}

extension Double {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
}
