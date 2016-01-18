//
//  ViewController.swift
//  lgSideMenuDemoSwift
//
//  Created by Max Kupetskiy on 18/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func openLeftView() {
        kMainViewController.showLeftViewAnimated(true, completionHandler: nil)
    }
    
    @IBAction func openRightView() {
        kMainViewController.showRightViewAnimated(true, completionHandler: nil)
    }
    
    @IBAction func showChooseController() {
        let chooseStoryboard = UIStoryboard(name: "Choose", bundle: NSBundle.mainBundle())
        
        let navigationController = chooseStoryboard.instantiateInitialViewController() as! ChooseNavigationController
        
        let window = UIApplication.sharedApplication().delegate?.window
        window!?.rootViewController = navigationController
        
        UIView.transitionWithView(window!!,
            duration: 0.3,
            options: UIViewAnimationOptions.TransitionCrossDissolve,
            animations: nil,
            completion: nil)
    }
}