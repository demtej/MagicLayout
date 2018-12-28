//
//  UIView+Pin.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit


public extension UIView {
    
    public func pin(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ){
        pinLeft(to: otherView, withMargin: margin)
        pinRight(to: otherView, withMargin: margin)
        pinBottom(to: otherView, withMargin: margin)
        pinTop(to: otherView, withMargin: margin)
    }

    public func pinLeft(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: superView, attribute: .leading, multiplier: 1, constant: margin))
    }

    public func pinRight(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: superView, attribute: .trailing, multiplier: 1, constant: -margin))
    }

    public func pinTop(to otherView: UIView? = nil, withMargin margin: CGFloat = 0 ) {
        var superView: UIView!
        if otherView == nil {
            superView = self.superview
        } else {
            superView = otherView
        }
        addMagicConstraint(MLMagicConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: superView, attribute: .top, multiplier: 1, constant: margin))
    }

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

    public func pinLastSubviewToBottom(withMargin margin: CGFloat = 0 ) {
        guard let lastView = self.subviews.last else {
            return
        }
        lastView.pinBottom(to: self, withMargin: margin)
    }
    
    public func pinFirstSubviewToTop(view: UIView, withMargin margin: CGFloat = 0 ) {
        guard let firstView = self.subviews.first else {
            return
        }
        firstView.pinTop(to: self, withMargin: margin)
    }
    
}

