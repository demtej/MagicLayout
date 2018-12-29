//
//  UIView+Pin.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit


public extension UIView {
    
    /**
     Create a magic constraint in order to pin view to another view
     - parameter otherView: view to be pinned to
     - parameter margin: value of margin
     */
    public func pin(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ){
        pinLeft(to: otherView, withMargin: margin)
        pinRight(to: otherView, withMargin: margin)
        pinBottom(to: otherView, withMargin: margin)
        pinTop(to: otherView, withMargin: margin)
    }
    
    /**
     Create a magic constraint in order to pin view's left side to another view's left side
     - parameter otherView: view to be pinned to
     - parameter margin: value of margin
     */
    public func pinLeft(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: superView, attribute: .leading, multiplier: 1, constant: margin))
    }
    
    /**
     Create a magic constraint in order to pin view's right side to another view's right side
     - parameter otherView: view to be pinned to
     - parameter margin: value of margin
     */
    public func pinRight(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: superView, attribute: .trailing, multiplier: 1, constant: -margin))
    }
    
    /**
     Create a magic constraint in order to pin view's top side to another view's top side
     - parameter otherView: view to be pinned to
     - parameter margin: value of margin
     */
    public func pinTop(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: superView, attribute: .top, multiplier: 1, constant: margin))
    }
    
    /**
     Create a magic constraint in order to pin view's bottom side to another view's bottom side
     - parameter otherView: view to be pinned to
     - parameter margin: value of margin
     */
    public func pinBottom(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: superView, attribute: .bottom, multiplier: 1, constant: -margin))
    }
}

public extension UIView {
    
    /**
     Create a magic constraint in order to pin last subview's bottom side to view's bottom side
     - parameter margin: value of margin
     */
    public func pinLastSubviewToBottom(withMargin margin: CGFloat = 0 ) {
        guard let lastView = self.subviews.last else {
            return
        }
        lastView.pinBottom(to: self, withMargin: margin)
    }
    
    /**
    Create a magic constraint in order to pin first subview's top side to view's top side
    - parameter margin: value of margin
    */
    public func pinFirstSubviewToTop(view: UIView, withMargin margin: CGFloat = 0 ) {
        guard let firstView = self.subviews.first else {
            return
        }
        firstView.pinTop(to: self, withMargin: margin)
    }
    
}

