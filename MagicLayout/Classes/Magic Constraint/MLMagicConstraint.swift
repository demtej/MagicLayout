//
//  MLMagicConstraint.swift
//  MagicLayout
//
//  Created by Demian Tejo on 17/12/18.
//

import Foundation
import UIKit
///:nodoc:
internal class MLMagicConstraint {
    
    internal let ownerItem: UIView
    internal let ownerAttribute: NSLayoutConstraint.Attribute
    internal let related: NSLayoutConstraint.Relation
    internal var relatedItem: UIView?
    internal var relatedToSuperview: Bool = false
    internal let relatedAttribute: NSLayoutConstraint.Attribute
    internal let multiplier: CGFloat
    internal var constant: CGFloat
    
    var relatedConstraint : NSLayoutConstraint? {
        get {
            if relatedToSuperview  && relatedItem == nil {
                guard let superView = ownerItem.superview else {
                    return nil
                }
                relatedItem = superView
            }
            ownerItem.translatesAutoresizingMaskIntoConstraints = false
            return NSLayoutConstraint(item: ownerItem, attribute: ownerAttribute, relatedBy: related, toItem: relatedItem, attribute: relatedAttribute, multiplier: multiplier, constant: constant + margin)
        }
    }
    
    init(item ownerItem: UIView, attribute ownerAttribute: NSLayoutConstraint.Attribute, relatedBy related: NSLayoutConstraint.Relation, toItem relatedItem: UIView?, attribute relatedAttribute: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant: CGFloat) {
        self.ownerItem = ownerItem
        self.ownerAttribute = ownerAttribute
        self.related = related
        self.relatedItem = relatedItem
        self.relatedAttribute = relatedAttribute
        self.relatedToSuperview = (relatedItem == nil && relatedAttribute != NSLayoutConstraint.Attribute.notAnAttribute)
        self.multiplier = multiplier
        self.constant = constant
        relatedConstraint?.isActive = true
    }

    init(item ownerItem: UIView, attribute ownerAttribute: NSLayoutConstraint.Attribute, relatedBy related: NSLayoutConstraint.Relation, attribute relatedAttribute: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant: CGFloat) {
        self.ownerItem = ownerItem
        self.ownerAttribute = ownerAttribute
        self.related = related
        self.relatedItem = nil
        self.relatedToSuperview = true
        self.relatedAttribute = relatedAttribute
        self.multiplier = multiplier
        self.constant = constant
    }
    
}
