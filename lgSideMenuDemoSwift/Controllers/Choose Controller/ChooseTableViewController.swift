//
//  ChooseTableViewController.swift
//  lgSideMenuDemoSwift
//
//  Created by United States of America on 17/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit
import LGSideMenuController

class ChooseTableViewController: UITableViewController {
    
    var titlesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlesArray = [ "Style Scale From Big",
                        "Style Slide Above",
                        "Style Slide Below",
                        "Style Scale From Little",
                        "Landscape always visible",
                        "Status bar always visible",
                        "Status bar light content",
                        "Custom style"]
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        
        cell?.textLabel?.font = UIFont.systemFontOfSize(16.0)
        cell?.textLabel?.text = titlesArray[indexPath.row]
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        
        let navigationController = mainStoryboard.instantiateViewControllerWithIdentifier("NavigationController")
        let mainViewController = mainStoryboard.instantiateInitialViewController() as! MainViewController
        mainViewController.rootViewController = navigationController
        
        switch indexPath.row {
        case 0:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.ScaleFromBig, type: 0)
        case 1:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.SlideAbove, type: 0)
        case 2:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.SlideBelow, type: 0)
        case 3:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.ScaleFromLittle, type: 0)
        case 4:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.ScaleFromBig, type: 1)
        case 5:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.SlideAbove, type: 2)
        case 6:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.SlideAbove, type: 3)
        case 7:
            mainViewController.setupWithPresentationStyle(LGSideMenuPresentationStyle.init(rawValue: 0)!, type: 4)
        default: ()
        }
        
        let window = UIApplication.sharedApplication().delegate?.window!
        window?.rootViewController = mainViewController
        
        UIView.transitionWithView(window!,
            duration: 0.3,
            options: UIViewAnimationOptions.TransitionCrossDissolve,
            animations: nil,
            completion: nil)
    }
}