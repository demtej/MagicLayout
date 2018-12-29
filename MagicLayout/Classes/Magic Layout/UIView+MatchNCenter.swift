//
//  UIView+MatchNCenter.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

public extension UIView {

    /**
     Create a magic constraint in order to center the view horizontally to super view
     - parameter container: if you want to related the center to another view use container (if you don't want to center to the parent view)
     */
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
    /**
     Create a magic constraint in order to center the view vertically to super view
     - parameter container: if you want to related the center to another view use container (if you don't want to center to the parent view)
     */
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
    
    /**
     Create a magic constraint in order to center the view vertically & horizontally to super view
     - parameter container: if you want to related the center to another view use container (if you don't want to center to the parent view)
     */
    
    public func center(to container:UIView? = nil) {
        centerHorizontally(to: container)
        centerVertically(to: container)
    }
    
    /**
     Create a magic constraint in order to match the view width to super view width
     - parameter otherView: if you want to related the match to another view use container (if you don't want to center to the parent view).
     - parameter percent: use this parameter if you want to match with percent of the related view size, equals is 100
     */
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
    
    /**
     Create a magic constraint in order to match the view height to super view height
     - parameter otherView: if you want to related the match to another view use container (if you don't want to center to the parent view).
     - parameter percent: use this parameter if you want to match with percent of the related view size, equals is 100
     */
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
    
    /**
     Create a magic constraint in order to match the view height & width to super view height & width
     - parameter view: if you want to related the match to another view use container (if you don't want to center to the parent view).
     - parameter percent: use this parameter if you want to match with percent of the related view size, equals is 100
     */
    public func matchSize(toView view:UIView? = nil, withPercentage percentage: CGFloat = 100){
        matchHeight(toView: view, withPercentage: percentage)
        matchWidth(toView: view, withPercentage: percentage)
    }
    
}
