//
//  ViewController.swift
//  MagicLayout
//
//  Created by Demian Tejo on 12/28/2018.
//  Copyright (c) 2018 Demian Tejo. All rights reserved.
//

import UIKit
import MagicLayout

class ViewController: MLMagicViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.magicPinky
        let myView = UIView()
        myView.pinLeft()
        myView.pinTop()
        myView.setWidth(width: 100)
        myView.setHeight(height: 40)
        myView.backgroundColor = UIColor.magicRash
        view.addSubview(myView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

