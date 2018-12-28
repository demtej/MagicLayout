//
//  UIColor+Extension.swift
//  MagicLayout_Example
//
//  Created by Demian Tejo on 28/12/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    static public var magicPinky : UIColor {
        get {
            return .UIColorFromRGB(0xec75ab)
        }
    }
    static public var magicRaspberry : UIColor {
        get {
            return .UIColorFromRGB(0xdf4362)
        }
    }
    static public var magicPurple : UIColor {
        get {
            return .UIColorFromRGB(0xa31f54)
        }
    }
    static public var magicGrape : UIColor {
        get {
            return .UIColorFromRGB(0x5c0f2a)
        }
    }
    static public var magicRash : UIColor {
        get {
            return .UIColorFromRGB(0x92152e)
        }
    }
    
    
}
