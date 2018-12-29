//
//  MLMagicViewController.swift
//  MagicTester
//
//  Created by Demian Tejo on 27/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit
/**
 MLMagicViewController is a UIViewController that override viewDidAppear in order to apply magic contrains to its view
 */
open class MLMagicViewController : UIViewController {
    ///:nodoc:
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.applyMagicConstrains()
    }
    
}
