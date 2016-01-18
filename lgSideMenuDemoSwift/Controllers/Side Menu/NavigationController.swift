//
//  NavigationController.swift
//  lgSideMenuDemoSwift
//
//  Created by Max Kupetskiy on 18/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return UIInterfaceOrientationIsLandscape(UIApplication.sharedApplication().statusBarOrientation) && UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Phone
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.Default
    }
    
    override func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation {
        return UIStatusBarAnimation.None
    }
}