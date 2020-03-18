//
//  ActivityActionsController.swift
//  Watch Extension
//
//  Created by Ammar AlTahhan on 07/10/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import WatchKit

class ActivityActionsController: WKInterfaceController {
    
    @IBOutlet var pauseButton: WKInterfaceButton!
    @IBOutlet var stopButton: WKInterfaceButton!
    
    var isPaused = false
    var endTappedOnce = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        setTitle("Active")
    }
    
    override func willActivate() {
        super.willActivate()
        
        endTappedOnce = false
        stopButton.setTitle("End")
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        if isPaused {
            NotificationCenter.default.post(name: .resumeWorkout, object: nil)
            setTitle("Active")
            pauseButton.setTitle("Pause")
        } else {
            NotificationCenter.default.post(name: .pauseWorkout, object: nil)
            setTitle("Paused")
            pauseButton.setTitle("Resume")
        }
        isPaused = !isPaused
    }
    
    @IBAction func stopTapped(_ sender: Any) {
        if endTappedOnce {
            NotificationCenter.default.post(name: .stopWorkout, object: nil)
            pauseButton.setEnabled(false)
            stopButton.setEnabled(false)
        } else {
            endTappedOnce = true
            stopButton.setTitle("Are you sure?")
        }
    }
    
}
