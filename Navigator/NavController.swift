//
//  NavController.swift
//  Foolin
//
//  Created by Jim on 12/10/15.
//  Copyright © 2015 Jim. All rights reserved.
//

import UIKit
import Left
import Right

public struct NavController {
    
    private let leftStoryBoard = UIStoryboard(name: "Left", bundle: NSBundle(identifier: "stewartstuff.com.Left"))
    
    public init() {
        
    }
    
    public func goLeftFrom(viewController: UIViewController) {
        let destination = leftStoryBoard.instantiateInitialViewController()
        let segue = UIStoryboardSegue(identifier: "left", source: viewController, destination: destination!) { () -> Void in
            viewController.presentViewController(destination!, animated: true, completion: nil)
        }
        segue.perform()
    }
    
    public func goCenter() {
    
    }
    
    public func goRightFrom(viewController: UIViewController) {
        let storyboard = UIStoryboard(name: "Right", bundle: NSBundle(identifier: "stewartstuff.com.Right"))
        let destination = storyboard.instantiateInitialViewController()
        let segue = UIStoryboardSegue(identifier: "right", source: viewController, destination: destination!) { () -> Void in
            viewController.presentViewController(destination!, animated: true, completion: nil)
        }
        segue.perform()
    }

}
