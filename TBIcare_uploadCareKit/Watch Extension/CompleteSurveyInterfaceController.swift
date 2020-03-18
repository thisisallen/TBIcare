//
//  CompleteSurveyInterfaceController.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 31/01/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import Foundation
import WatchKit

class CompleteSurveyInterfaceController: WKInterfaceController {
    
    private var currentContext: Any?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        currentContext = context
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            WKInterfaceController.reloadRootControllers(withNames: ["InterfaceController"], contexts: [self.currentContext])
        }
    }
    
}
