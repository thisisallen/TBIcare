//
//  CountingLabel.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 02/03/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class CountingLabel: UILabel {
    
    func setNumber(_ number: Float, suffix: String = "", animated: Bool = true) {
        let duration: Double = 1.0 //seconds
        DispatchQueue.global().async {
            for i in stride(from: 0.0, to: number, by: 0.01) {
                let sleepTime = UInt32(Double(duration)/Double(number) * 10000.0)
                usleep(sleepTime)
                DispatchQueue.main.async {
                    self.text = String(format: "%.2f\(suffix)", i)
                }
            }
        }
    }
    
    func setNumber(_ number: Double, roundedDecimals: Int = 1, suffix: String = "", animated: Bool = true, duration: TimeInterval = 1) {
        
        let roundingFactor = Double(roundedDecimals * 10)
        let number = Double(round(number * roundingFactor) / roundingFactor)
        
        guard animated else {
            let percentage = round(number * roundingFactor) / roundingFactor
            self.text = "\(percentage)\(suffix)"
            return
        }
        
        DispatchQueue.global().async {
            for i in stride(from: 0.0, to: number, by: 0.1) {
                let sleepTime = UInt32(Double(duration)/Double(number) * 50000.0)
                usleep(sleepTime)
                let percentage = round(i * roundingFactor) / roundingFactor
                DispatchQueue.main.async {
                    self.text = "\(percentage)\(suffix)"
                }
            }
            
            DispatchQueue.main.async {
                // Set the correct final progress after animation ends
                self.setNumber(number, roundedDecimals: roundedDecimals, suffix: suffix, animated: false)
            }
            
        }
    }
    
}
