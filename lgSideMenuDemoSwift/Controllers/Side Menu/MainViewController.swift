//
//  MainViewController.swift
//  lgSideMenuDemoSwift
//
//  Created by United States of America on 17/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit
import LGSideMenuController

class MainViewController: LGSideMenuController {
    var leftViewController: LeftViewController?
    var rightViewController: RightViewController?
    var type = 0
    
    func setupWithPresentationStyle(style: LGSideMenuPresentationStyle, type: Int) {
        leftViewController  = self.storyboard?.instantiateViewControllerWithIdentifier("LeftViewController") as? LeftViewController
        rightViewController = self.storyboard?.instantiateViewControllerWithIdentifier("RightViewController") as? RightViewController
        
        switch type {
        case 0:
            self.setLeftViewEnabledWithWidth(250.0, presentationStyle: style, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.leftViewStatusBarStyle          = UIStatusBarStyle.Default
            self.leftViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnNone
            
            self.setRightViewEnabledWithWidth(100.0, presentationStyle: style, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.rightViewStatusBarStyle          = UIStatusBarStyle.Default
            self.rightViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnNone
            
            switch style {
                case .ScaleFromBig:
                    self.leftViewBackgroundImage                   = UIImage(named: "image")
                    leftViewController!.tableView.backgroundColor  = UIColor.clearColor()
                    leftViewController!.tintColor                  = UIColor.whiteColor()

                    self.rightViewBackgroundImage                  = UIImage(named: "image2")
                    rightViewController?.tableView.backgroundColor = UIColor.clearColor()
                    rightViewController?.tintColor                 = UIColor.whiteColor()
                    
                case .SlideAbove:
                    self.leftViewBackgroundColor                   = UIColor(white: 1.0, alpha: 0.9)
                    leftViewController?.tableView.backgroundColor  = UIColor.clearColor()
                    leftViewController?.tintColor                  = UIColor.blackColor()

                    self.rightViewBackgroundColor                  = UIColor(white: 1.0, alpha: 0.9)
                    rightViewController?.tableView.backgroundColor = UIColor.clearColor()
                    rightViewController?.tintColor                 = UIColor.blackColor()
                    
                case .SlideBelow:
                    self.leftViewBackgroundImage                   = UIImage(named: "image")
                    leftViewController?.tableView.backgroundColor  = UIColor.clearColor()
                    leftViewController?.tintColor                  = UIColor.whiteColor()

                    self.rightViewBackgroundImage                  = UIImage(named: "image2")
                    rightViewController?.tableView.backgroundColor = UIColor.clearColor()
                    rightViewController?.tintColor                 = UIColor.whiteColor()
                    
                case .ScaleFromLittle:
                    self.leftViewBackgroundImage                   = UIImage(named: "image")
                    leftViewController?.tableView.backgroundColor  = UIColor.clearColor()
                    leftViewController?.tintColor                  = UIColor.whiteColor()

                    self.rightViewBackgroundImage                  = UIImage(named: "image2")
                    rightViewController?.tableView.backgroundColor = UIColor.clearColor()
                    rightViewController?.tintColor                 = UIColor.whiteColor()
            }
            
        case 1:
            self.setLeftViewEnabledWithWidth(250.0, presentationStyle: style, alwaysVisibleOptions: [LGSideMenuAlwaysVisibleOptions.OnPhoneLandscape, LGSideMenuAlwaysVisibleOptions.OnPadLandscape])
            self.leftViewStatusBarStyle          = UIStatusBarStyle.Default
            self.leftViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnPadLandscape
            self.leftViewBackgroundImage         = UIImage(named: "image")

            leftViewController?.tableView.backgroundColor = UIColor.clearColor()
            leftViewController?.tintColor                 = UIColor.whiteColor()
            
            self.setRightViewEnabledWithWidth(100.0, presentationStyle: LGSideMenuPresentationStyle.SlideAbove, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.rightViewStatusBarStyle          = UIStatusBarStyle.Default
            self.rightViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnPadLandscape
            self.rightViewBackgroundColor         = UIColor(white: 1.0, alpha: 0.9)
            
            rightViewController?.tableView.backgroundColor = UIColor.clearColor()
            rightViewController?.tintColor                 = UIColor.blackColor()
            
        case 2:
            self.setLeftViewEnabledWithWidth(250.0, presentationStyle: style, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.leftViewStatusBarStyle          = UIStatusBarStyle.Default
            self.leftViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnAll
            self.leftViewBackgroundColor         = UIColor(white: 1.0, alpha: 0.9)
            
            leftViewController?.tableView.backgroundColor = UIColor.clearColor()
            leftViewController?.tintColor                 = UIColor.blackColor()
            
            self.setRightViewEnabledWithWidth(100.0, presentationStyle: style, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.rightViewStatusBarStyle          = UIStatusBarStyle.Default
            self.rightViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnAll
            self.rightViewBackgroundColor         = UIColor(white: 1.0, alpha: 0.9)
            
            rightViewController?.tableView.backgroundColor = UIColor.clearColor()
            rightViewController?.tintColor                 = UIColor.blackColor()
            
        case 3:
            self.setLeftViewEnabledWithWidth(250.0, presentationStyle: style, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.leftViewStatusBarStyle          = UIStatusBarStyle.LightContent
            self.leftViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnAll
            self.leftViewBackgroundColor         = UIColor(white: 0.0, alpha: 0.5)
            
            leftViewController?.tableView.backgroundColor = UIColor.clearColor()
            leftViewController?.tintColor                 = UIColor.whiteColor()
            
            self.setRightViewEnabledWithWidth(100.0, presentationStyle: style, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.rightViewStatusBarStyle          = UIStatusBarStyle.LightContent
            self.rightViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnAll
            self.rightViewBackgroundColor         = UIColor(white: 0.0, alpha: 0.5)
            
            rightViewController?.tableView.backgroundColor = UIColor.clearColor()
            rightViewController?.tintColor                 = UIColor.whiteColor()
            
        case 4:
            self.swipeGestureArea = LGSideMenuSwipeGestureArea.Full
            self.rootViewCoverColorForLeftView = UIColor(red: 0.0, green: 1.0, blue: 0.5, alpha: 0.3)
            self.rootViewScaleForLeftView = 0.6
            self.rootViewLayerBorderWidth = 3.0
            self.rootViewLayerBorderColor = UIColor.whiteColor()
            self.rootViewLayerShadowRadius = 10.0
            self.rootViewCoverColorForRightView = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.3)
            
            self.setLeftViewEnabledWithWidth(250.0, presentationStyle: LGSideMenuPresentationStyle.ScaleFromBig, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.leftViewAnimationSpeed = 0.4
            self.leftViewStatusBarStyle = UIStatusBarStyle.Default
            self.leftViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnNone
            self.leftViewBackgroundImage = UIImage(named: "image")
            self.leftViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnPadLandscape
            self.leftViewBackgroundImageInitialScale = 1.5
            self.leftViewInititialOffsetX = -200.0
            self.leftViewInititialScale = 1.5
            
            leftViewController?.tableView.backgroundColor = UIColor.clearColor()
            leftViewController?.tintColor = UIColor.whiteColor()
            
            self.setRightViewEnabledWithWidth(100.0, presentationStyle: LGSideMenuPresentationStyle.SlideAbove, alwaysVisibleOptions: LGSideMenuAlwaysVisibleOptions.OnNone)
            self.rightViewAnimationSpeed = 0.3
            self.rightViewStatusBarStyle = UIStatusBarStyle.Default
            self.rightViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnNone
            self.rightViewBackgroundColor = UIColor(white: 1.0, alpha: 0.7)
            self.rightViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOptions.OnPadLandscape
            self.rightViewLayerBorderWidth = 3.0
            self.rightViewLayerBorderColor = UIColor.blackColor()
            self.rightViewLayerShadowRadius = 10.0
            
            rightViewController?.tableView.backgroundColor = UIColor.clearColor()
            rightViewController?.tintColor = UIColor.blackColor()
            
        default: ()
        }
        
        leftViewController?.tableView.reloadData()
        self.leftView().addSubview((leftViewController?.tableView)!)
        
        rightViewController?.tableView.reloadData()
        self.rightView().addSubview((rightViewController?.tableView)!)
    }
    
    override func leftViewWillLayoutSubviewsWithSize(size: CGSize) {
        super.leftViewWillLayoutSubviewsWithSize(size)
        
        if !(UIApplication.sharedApplication().statusBarHidden && (type == 2 || type == 3)) {
            leftViewController?.tableView.frame = CGRectMake(0.0, 20.0, size.width, size.height - 20.0)
        } else {
            leftViewController?.tableView.frame = CGRectMake(0.0, 0.0, size.width, size.height)
        }
    }
    
    override func rightViewWillLayoutSubviewsWithSize(size: CGSize) {
        super.leftViewWillLayoutSubviewsWithSize(size)
        
        if !(UIApplication.sharedApplication().statusBarHidden && (type == 2 || type == 3)) {
            rightViewController?.tableView.frame = CGRectMake(0.0, 20.0, size.width, size.height - 20.0)
        } else {
            rightViewController?.tableView.frame = CGRectMake(0.0, 0.0, size.width, size.height)
        }
    }
}