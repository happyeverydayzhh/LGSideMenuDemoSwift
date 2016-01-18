//
//  RightViewController.swift
//  lgSideMenuDemoSwift
//
//  Created by United States of America on 17/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit

class RightViewController: UITableViewController {
    var tintColor: UIColor?
    var titlesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlesArray = ["Open Left View",
                        "",
                        "1",
                        "2",
                        "3",
                        "4",
                        "5",
                        "6",
                        "7",
                        "8",
                        "9",
                        "10"]
        
        self.tableView.contentInset = UIEdgeInsetsMake(44.0, 0.0, 44.0, 0.0)
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesArray.count
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! RightViewCell
        
        cell.textLabel?.text = titlesArray[indexPath.row]
        cell.textLabel?.font = indexPath.row == 0 ? UIFont.boldSystemFontOfSize(15.0) : UIFont.boldSystemFontOfSize(30.0)
        cell.separatorView?.hidden = !(indexPath.row != 0 && indexPath.row != 1 && indexPath.row != titlesArray.count - 1)
        cell.userInteractionEnabled = (indexPath.row != 1)
        
        cell.tintColor = tintColor
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return indexPath.row == 1 ? 50.0 : 100.0
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            if !kMainViewController.isRightViewAlwaysVisible() {
                kMainViewController.hideRightViewAnimated(true, completionHandler: { () -> Void in
                    kMainViewController.showLeftViewAnimated(true, completionHandler: nil)
                })
            } else {
                kMainViewController.showLeftViewAnimated(true, completionHandler: nil)
            }
        } else {
            let viewController = UIViewController()
            viewController.view.backgroundColor = UIColor.whiteColor()
            viewController.title = "Test \(titlesArray[indexPath.row])"
            kNavigationController.pushViewController(viewController, animated: true)
            
            kMainViewController.hideRightViewAnimated(true, completionHandler: nil)
        }
    }
}