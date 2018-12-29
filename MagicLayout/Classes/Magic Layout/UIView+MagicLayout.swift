//
//  MagicLayout.swift
//  MagicLayout
//
//  Created by Demian Tejo on 17/12/18.
//

import UIKit

extension UIView {
    /** :nodoc: */
    private static let associationConstraints = MLObjectAssociation<MLConstraintGuide>()
    /** :nodoc: */
    private var magicConstraints: [MLMagicConstraint]? {
        get { return UIView.associationConstraints[self]?.constraints }
        set {
            if let newConstraints = newValue {
                let guide = MLConstraintGuide()
                guide.constraints = newConstraints
                UIView.associationConstraints[self] = guide
            }else{
               UIView.associationConstraints[self] = nil
            }
        }
    }
    /** :nodoc: */
    internal func addMagicConstraint(_ constraint: MLMagicConstraint){
        if var constraints = self.magicConstraints {
            constraints.append(constraint)
            magicConstraints = constraints
        }else{
            var newConstraints = [MLMagicConstraint]()
            newConstraints.append(constraint)
            magicConstraints = newConstraints
        }
    }
    
    /**
     Remove all magic contraints from owner view
     */
    open func removeAllMagicConstraints() {
        self.magicConstraints = nil
    }
    
    /**
     Create all related NSLayoutConstraint for the view and all subviews in cascade mode
     */
    open func applyMagicConstrains() {
        for subView in subviews {
            subView.applyMagicConstrains()
        }
        guard let mlConstraints = self.magicConstraints else {
            return
        }
        for mlconstraint in mlConstraints {
            mlconstraint.relatedConstraint?.isActive = true
        }
    }
    
}
