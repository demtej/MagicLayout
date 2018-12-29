//
//  MLConstraintGuide.swift
//  MagicLayout
//
//  Created by Demian Tejo on 17/12/18.
//

import Foundation
///:nodoc:
internal class MLConstraintGuide {
    var constraints: [MLMagicConstraint] = [MLMagicConstraint]()
    subscript(index: Int) -> MLMagicConstraint {
        get {
            return constraints[index]
        }
        set(newValue) {
            constraints[index] = newValue
        }
    }
}
