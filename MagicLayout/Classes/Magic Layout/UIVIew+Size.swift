//
//  UIVIew+Size.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

extension UIView {
    
    public func defineSize(width: CGFloat, height: CGFloat){
        setHeight(height: height)
        setWidth(width: width)
    }
    
    public func setHeight(height: CGFloat ) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height))
    }
    
    public func setWidth(width: CGFloat ) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    
    public func setMinWidth(width: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    
    public func setMaxWidth(width: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .lessThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    
}
