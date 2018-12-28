//
//  UIVIew+Size.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

public extension UIView {
    
    open func defineSize(width: CGFloat, height: CGFloat){
        setHeight(height: height)
        setWidth(width: width)
    }
    
    open func setHeight(height: CGFloat ) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height))
    }
    
    open func setWidth(width: CGFloat ) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    
    open func setMinWidth(width: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    
    open func setMaxWidth(width: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .lessThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    
}
