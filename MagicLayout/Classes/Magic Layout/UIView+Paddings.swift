//
//  UIView+Paddings.swift
//  MagicTester
//
//  Created by Demian Tejo on 21/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

extension UIView {
    
    private static let associationPaddings = MLObjectAssociation<MLPadding>()

    private var magicPaddings: MLPadding? {
        get {
            if UIView.associationPaddings[self] == nil {
                UIView.associationPaddings[self] = MLPadding()
            }
                return UIView.associationPaddings[self]
            }
    }
    
    public var leftPadding : CGFloat {
        get {
            return magicPaddings?.left ?? 0
        }
    }
    
    public var rightPadding : CGFloat {
        get {
            return magicPaddings?.right ?? 0
        }
    }
    
    public var topPadding : CGFloat {
        get {
            return magicPaddings?.top ?? 0
        }
    }
    
    public var bottomPadding : CGFloat {
        get {
            return magicPaddings?.bottom ?? 0
        }
    }
    
    public func setLeftPadding(padding: CGFloat){
        magicPaddings?.left = padding
    }
    
    public func setRightPadding(padding: CGFloat){
        magicPaddings?.right = padding
    }
    
    public func setTopPadding(padding: CGFloat){
        magicPaddings?.top = padding
    }
    
    public func setBottomPadding(padding: CGFloat){
        magicPaddings?.bottom = padding
    }
    
    public func setPaddings(left:CGFloat,right: CGFloat, top:CGFloat, bottom:CGFloat){
        setLeftPadding(padding: left)
        setRightPadding(padding: right)
        setTopPadding(padding: top)
        setBottomPadding(padding: bottom)
    }
    
    public func setPadding(padding: CGFloat) {
        setPaddings(left: padding, right: padding, top: padding, bottom: padding)
    }
    
}
