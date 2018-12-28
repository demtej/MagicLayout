//
//  MLMagicViewController.swift
//  MagicTester
//
//  Created by Demian Tejo on 27/12/18.
//  Copyright © 2018 Demian Tejo. All rights reserved.
//

import UIKit

open class MLMagicViewController : UIViewController {
    
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.applyMagicConstrains()
    }
    
}
