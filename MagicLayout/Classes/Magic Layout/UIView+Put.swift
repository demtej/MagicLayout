//
//  UIView+Put.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

public extension UIView {
    
    public func put(belowOf view2: UIView, withMargin margin: CGFloat = 0) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .top,
            relatedBy: .equal,
            toItem: view2,
            attribute: .bottom,
            multiplier: 1.0,
            constant: margin
        ))
    }
    
    public func put(onBottomOfLastViewOf view2: UIView, withMargin margin: CGFloat = 0) {
        if !view2.subviews.contains(self) {
            return
        }
        for actualView in view2.subviews.reversed() where actualView != self {
            put(onBottomOfLastViewOf: actualView, withMargin: margin)
        }
    }
    
    public func put( aboveOf view2: UIView, withMargin margin: CGFloat = 0) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view2,
            attribute: .top,
            multiplier: 1.0,
            constant: margin
        ))
    }
    
    public func put(leftOf view2: UIView, withMargin margin: CGFloat = 0, relation: NSLayoutConstraint.Relation = NSLayoutConstraint.Relation.equal) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .right,
            relatedBy: relation,
            toItem: view2,
            attribute: .left,
            multiplier: 1.0,
            constant: -margin
        ))
    }
    
    public func put(rightOf view2: UIView, withMargin margin: CGFloat = 0, relation: NSLayoutConstraint.Relation = NSLayoutConstraint.Relation.equal) {
        addMagicConstraint(MLMagicConstraint(
            item: self,
            attribute: .left,
            relatedBy: relation,
            toItem: view2,
            attribute: .right,
            multiplier: 1.0,
            constant: margin
        ))
    }
    
}


