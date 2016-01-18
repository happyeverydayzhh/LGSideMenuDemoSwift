//
//  ChooseNavigationController.swift
//  lgSideMenuDemoSwift
//
//  Created by United States of America on 17/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit

class ChooseNavigationController: UINavigationController {

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func prefersStatusBarHidden() -> Bool {
        return (UIInterfaceOrientationIsLandscape(UIApplication.sharedApplication().statusBarOrientation) && UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Phone)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation {
        return UIStatusBarAnimation.None
    }
}