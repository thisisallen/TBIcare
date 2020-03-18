//
//  RootViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 02/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit

extension OCKInsightItem {
    /// Returns an `OCKInsightItem` to show when no insights have been calculated.
    static func emptyInsightsMessage() -> OCKInsightItem {
        return OCKMessageItem(title: "No Insights", text: "There are no insights to show.", tintColor: Colors.green.color, messageType: .tip)
    }
}
