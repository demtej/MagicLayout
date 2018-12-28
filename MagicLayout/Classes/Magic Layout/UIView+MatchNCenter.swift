//
//  UIView+MatchNCenter.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

public extension UIView {

    public func centerHorizontally(to container: UIView? = nil) {
        var superView: UIView?
        if container == nil {
            superView = self.superview
        } else {
            superView = container
        }
        if superView != nil {
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: superView, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0))
        } else {
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0))
        }
    }

    public func centerVertically(to container: UIView? = nil) {
        var superView: UIView?
        if container == nil {
            superView = self.superview
        } else {
            superView = container
        }
        if superView != nil {
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: superView, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0))
        }else{
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0))
        }
    }
    
    public func center(to container:UIView? = nil) {
        centerHorizontally(to: container)
        centerVertically(to: container)
    }
    
    public func matchWidth(toView otherView: UIView? = nil, withPercentage percent: CGFloat = 100) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        if superView != nil {
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: superView, attribute: NSLayoutConstraint.Attribute.width, multiplier: percent / 100, constant: 0))
        }else{
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, attribute: NSLayoutConstraint.Attribute.width, multiplier: percent / 100, constant: 0))
        }
        
    }
    
    public func matchHeight(toView otherView: UIView? = nil, withPercentage percent: CGFloat = 100) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        if superView != nil {
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: superView, attribute: NSLayoutConstraint.Attribute.height, multiplier: percent / 100, constant: 0))
        }else{
            addMagicConstraint(MLMagicConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, attribute: NSLayoutConstraint.Attribute.height, multiplier: percent / 100, constant: 0))
        }
    }
    
    public func matchSize(toView view:UIView? = nil, withPercentage percentage: CGFloat = 100){
        matchHeight(toView: view, withPercentage: percentage)
        matchWidth(toView: view, withPercentage: percentage)
    }
    
}
