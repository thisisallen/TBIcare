//
//  Double+Extensions.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 30/11/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension Double {
    
    /// Produces formated String as follows:
    /// 10000.timeAsString(style: .positional)  // 2:46:40
    /// 10000.timeAsString(style: .abbreviated) // 2h 46m 40s
    /// 10000.timeAsString(style: .short)       // 2 hr, 46 min, 40 sec
    /// 10000.timeAsString(style: .full)        // 2 hours, 46 minutes, 40 seconds
    /// 10000.timeAsString(style: .spellOut)    // two hours, forty-six minutes, forty seconds
    /// 10000.timeAsString(style: .brief)       // 2hr 46min 40sec
    func timeAsString(style: DateComponentsFormatter.UnitsStyle,
                      allowedUnits: NSCalendar.Unit = [.hour, .minute, .second, .nanosecond],
                      zeroFormattingBehavior: DateComponentsFormatter.ZeroFormattingBehavior = .default) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = allowedUnits
        formatter.unitsStyle = style
        formatter.zeroFormattingBehavior = .pad
        guard let formattedString = formatter.string(from: self) else { return "" }
        return formattedString
    }
    
    func formated(with decimals: Int = 2) -> String {
        return String(format: "%.\(decimals)f", self)
    }
}
