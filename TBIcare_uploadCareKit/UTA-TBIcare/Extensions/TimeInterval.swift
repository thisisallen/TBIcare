//
//  TimeInterval.swift
//  QosoorApp
//
//  Created by Ammar AlTahhan on 30/05/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension TimeInterval{
    
    func toMinutesSeconds() -> String {
        
        let time = NSInteger(self)
        
        //        let ms = Int((self.truncatingRemainder(dividingBy: 1)) * 1000)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        
        return String(format: "%0.2d:%0.2d",minutes,seconds)
        
    }
    
    func timeComponents() -> (minutes: Int, seconds: Int) {
        let time = NSInteger(self)
        
        //        let ms = Int((self.truncatingRemainder(dividingBy: 1)) * 1000)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        
        return (minutes,seconds)
    }
}
