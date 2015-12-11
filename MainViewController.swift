//
//  MainViewController.swift
//  Foolin
//
//  Created by Jim on 12/10/15.
//  Copyright © 2015 Jim. All rights reserved.
//

import UIKit
import Navigator

class MainViewController: UIViewController {
    
    let navigator = NavController()

    @IBAction private func leftButtonTapped(sender: UIButton) {
        navigator.goLeft()
    }

    @IBAction private func centerButtonTapped(sender: UIButton) {
        navigator.goCenter()
    }
    
    @IBAction private func rightButtonTapped(sender: UIButton) {
        navigator.goRight()
    }
    
    
}
