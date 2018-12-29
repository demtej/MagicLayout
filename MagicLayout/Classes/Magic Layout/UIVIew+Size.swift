//
//  UIVIew+Size.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit
//:nodoc:
public extension UIView {
    /**
     Create a magic constraint in order to fix size
     - parameter width: width
     - parameter height: height
     */
    public func defineSize(width: CGFloat, height: CGFloat){
        setHeight(height: height)
        setWidth(width: width)
    }
    /**
     Create a magic constraint in order to fix height
     - parameter height: height
     */
    public func setHeight(height: CGFloat ) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height))
    }
    /**
     Create a magic constraint in order to fix width
     - parameter width: width
     */
    public func setWidth(width: CGFloat ) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    /**
     Create a magic constraint in order to set min width
     - parameter width: min width
     */
    public func setMinWidth(width: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    /**
     Create a magic constraint in order to set max width
     - parameter width: max width
     */
    public func setMaxWidth(width: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .width, relatedBy: .lessThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
    }
    /**
     Create a magic constraint in order to set min height
     - parameter height: min height
     */
    public func setMinWidth(height: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .height, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height))
    }
    /**
     Create a magic constraint in order to set max height
     - parameter height: max height
     */
    public func setMaxWidth(height: CGFloat) {
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .height, relatedBy: .lessThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height))
    }
}
