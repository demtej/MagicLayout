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
    /**
     Create a magic constraint in order to add left padding to the view
     - parameter padding: value of padding
     */
    open func setLeftPadding(padding: CGFloat){
        magicPaddings?.left = padding
    }
    /**
     Create a magic constraint in order to add right padding to the view
     - parameter padding: value of padding
     */
    open func setRightPadding(padding: CGFloat){
        magicPaddings?.right = padding
    }
    /**
     Create a magic constraint in order to add top padding to the view
     - parameter padding: value of padding
     */
    open func setTopPadding(padding: CGFloat){
        magicPaddings?.top = padding
    }
    /**
     Create a magic constraint in order to add bottom padding to the view
     - parameter padding: value of padding
     */
    open func setBottomPadding(padding: CGFloat){
        magicPaddings?.bottom = padding
    }
    /**
     Create a magic constraint in order to add paddings to the view
     - parameter left: value of left padding
     - parameter right: value of right padding
     - parameter top: value of top padding
     - parameter bottom: value of bottom padding
     */
    open func setPaddings(left:CGFloat,right: CGFloat, top:CGFloat, bottom:CGFloat){
        setLeftPadding(padding: left)
        setRightPadding(padding: right)
        setTopPadding(padding: top)
        setBottomPadding(padding: bottom)
    }
    /**
     Create a magic constraint in order to add paddings to the view
     - parameter padding: value of left,right,top & bottom padding
     */
    open func setPadding(padding: CGFloat) {
        setPaddings(left: padding, right: padding, top: padding, bottom: padding)
    }
    
}
