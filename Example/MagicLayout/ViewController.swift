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
        view.backgroundColor = UIColor.magicGrape
        let topView = UIView()
        let bottomView = UIView()
        let innerView = UIView()
        innerView.backgroundColor = .white
        innerView.pin()
        topView.matchWidth()
        topView.pinTop()
        topView.setPaddings(left: 10, right: 10, top: 30, bottom: 30)
        topView.matchHeight(withPercentage: 50)
        bottomView.matchWidth()
        bottomView.pinBottom()
        bottomView.matchHeight(withPercentage: 50)
        view.addSubview(topView)
        view.addSubview(bottomView)
        topView.addSubview(innerView)
        topView.backgroundColor = UIColor.magicPinky
        bottomView.backgroundColor = UIColor.magicPurple
       
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
     super.viewDidLoad()
     view.backgroundColor = UIColor.magicBlue
     let myView = UIView()
     myView.pin()
     myView.backgroundColor = UIColor.magicBlue
     myView.setPadding(padding: 40)
     view.addSubview(myView)
     */

    /*
     super.viewDidLoad()
     view.backgroundColor = UIColor.magicPinky
     let myView = UIView()
     myView.pinLeft()
     myView.pinTop()
     myView.setWidth(width: 100)
     myView.setHeight(height: 40)
     myView.backgroundColor = UIColor.magicRash
     view.addSubview(myView)
     */
    
}

