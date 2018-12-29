//
//  MLMagicConstraint+Margin.swift
//  MagicTester
//
//  Created by Demian Tejo on 28/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import Foundation
import UIKit
///:nodoc:
internal extension MLMagicConstraint {
    var margin : CGFloat {
        get {
            switch relatedAttribute {
            case .leading:
                return relatedItem?.leftPadding ?? 0
            case .trailing:
                return 0 - (relatedItem?.rightPadding ?? 0)
            case .top:
                return relatedItem?.topPadding ?? 0
            case .bottom:
                return 0 - (relatedItem?.bottomPadding ?? 0)
            default:
                return 0
            }
        }
    }
}
