//
//  Color.swift
//  CSVA
//
//  Created by Ammar AlTahhan on 01/07/2018.
//  Copyright © 2018 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    /// Hex = 0x909090
    class var greyContent: UIColor {
        return UIColor(rgb: 0x909090)
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}

import UIKit

extension UIColor {
    
    @nonobjc class var tangerine: UIColor {
        return UIColor(red: 1.0, green: 137.0 / 255.0, blue: 19.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var slate: UIColor {
        return UIColor(red: 81.0 / 255.0, green: 92.0 / 255.0, blue: 111.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var warmGrey: UIColor {
        return UIColor(white: 131.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var myWhite: UIColor {
        return UIColor(white: 242.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var macaroniAndCheese: UIColor {
        return UIColor(red: 240.0 / 255.0, green: 174.0 / 255.0, blue: 41.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var lightGold: UIColor {
        return UIColor(red: 1.0, green: 201.0 / 255.0, blue: 80.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var yellowishOrange: UIColor {
        return UIColor(red: 1.0, green: 177.0 / 255.0, blue: 19.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var greyishBrown: UIColor {
        return UIColor(red: 100.0 / 255.0, green: 97.0 / 255.0, blue: 88.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var lightGoldTwo: UIColor {
        return UIColor(red: 1.0, green: 208.0 / 255.0, blue: 100.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var brightMagenta: UIColor {
        return UIColor(red: 1.0, green: 19.0 / 255.0, blue: 246.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var electricPurple: UIColor {
        return UIColor(red: 133.0 / 255.0, green: 44.0 / 255.0, blue: 1.0, alpha: 1.0)
    }
    
    @nonobjc class var viewBackground: UIColor {
        return UIColor(red: 242 / 255.0, green: 242 / 255.0, blue: 242 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var grapePurple: UIColor {
        return UIColor(red: 83.0 / 255.0, green: 21.0 / 255.0, blue: 101.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var shockingPink: UIColor {
        return UIColor(red: 1.0, green: 0.0, blue: 166.0 / 255.0, alpha: 1.0)
    }

    
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
