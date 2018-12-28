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
    
    open var leftPadding : CGFloat {
        get {
            return magicPaddings?.left ?? 0
        }
    }
    
    open var rightPadding : CGFloat {
        get {
            return magicPaddings?.right ?? 0
        }
    }
    
    open var topPadding : CGFloat {
        get {
            return magicPaddings?.top ?? 0
        }
    }
    
    open var bottomPadding : CGFloat {
        get {
            return magicPaddings?.bottom ?? 0
        }
    }
    
    open func setLeftPadding(padding: CGFloat){
        magicPaddings?.left = padding
    }
    
    open func setRightPadding(padding: CGFloat){
        magicPaddings?.right = padding
    }
    
    open func setTopPadding(padding: CGFloat){
        magicPaddings?.top = padding
    }
    
    open func setBottomPadding(padding: CGFloat){
        magicPaddings?.bottom = padding
    }
    
    open func setPaddings(left:CGFloat,right: CGFloat, top:CGFloat, bottom:CGFloat){
        setLeftPadding(padding: left)
        setRightPadding(padding: right)
        setTopPadding(padding: top)
        setBottomPadding(padding: bottom)
    }
    
    open func setPadding(padding: CGFloat) {
        setPaddings(left: padding, right: padding, top: padding, bottom: padding)
    }
    
}
