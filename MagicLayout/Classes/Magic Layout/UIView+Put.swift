//
//  UIView+Put.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

public extension UIView {
    /**
     Create a magic constraint in order to put view below of another view
     - parameter view: related view
     - parameter margin: value of margin
     */
    public func put(belowOf view: UIView, withMargin margin: CGFloat = 0) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 1.0,
            constant: margin
        ))
    }
    /**
     Create a magic constraint in order to put view on bottom of another view's last subview
     - parameter view: related view
     - parameter margin: value of margin
     */
    public func put(onBottomOfLastViewOf view: UIView, withMargin margin: CGFloat = 0) {
        if !view.subviews.contains(self) {
            return
        }
        for actualView in view.subviews.reversed() where actualView != self {
            put(onBottomOfLastViewOf: actualView, withMargin: margin)
        }
    }
    /**
     Create a magic constraint in order to put view above of another view
     - parameter view: related view
     - parameter margin: value of margin
     */
    public func put( aboveOf view: UIView, withMargin margin: CGFloat = 0) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view,
            attribute: .top,
            multiplier: 1.0,
            constant: margin
        ))
    }
    /**
     Create a magic constraint in order to put view left of another view
     - parameter view: related view
     - parameter margin: value of margin
     */
    public func put(leftOf view: UIView, withMargin margin: CGFloat = 0, relation: NSLayoutConstraint.Relation = NSLayoutConstraint.Relation.equal) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .right,
            relatedBy: relation,
            toItem: view,
            attribute: .left,
            multiplier: 1.0,
            constant: -margin
        ))
    }
    /**
     Create a magic constraint in order to put view right of another view
     - parameter view: related view
     - parameter margin: value of margin
     */
    public func put(rightOf view: UIView, withMargin margin: CGFloat = 0, relation: NSLayoutConstraint.Relation = NSLayoutConstraint.Relation.equal) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .left,
            relatedBy: relation,
            toItem: view,
            attribute: .right,
            multiplier: 1.0,
            constant: margin
        ))
    }
    
}


