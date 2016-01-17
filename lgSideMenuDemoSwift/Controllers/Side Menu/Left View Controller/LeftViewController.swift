//
//  LeftViewController.swift
//  lgSideMenuDemoSwift
//
//  Created by United States of America on 17/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit

class LeftViewController: UITableViewController {
    var tintColor: UIColor?
    var titlesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlesArray = [ "Open Right View",
                        "",
                        "Profile",
                        "News",
                        "Articles",
                        "Video",
                        "Music"]
        
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
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! LeftViewCell
        
        cell.textLabel?.text = titlesArray[indexPath.row]
        cell.separatorView?.hidden = !(indexPath.row != 0 && indexPath.row != 1 && indexPath.row != titlesArray.count - 1)
        cell.userInteractionEnabled = (indexPath.row != 1)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return indexPath.row == 1 ? 22.0 : 44.0
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            if !kMainViewController.isLeftViewAlwaysVisible() {
                kMainViewController.hideLeftViewAnimated(true, completionHandler: { () -> Void in
                    kMainViewController.showRightViewAnimated(true, completionHandler: nil)
                })
            } else {
                kMainViewController.showRightViewAnimated(true, completionHandler: nil)
            }
        } else {
            let viewController = UIViewController()
            viewController.view.backgroundColor = UIColor.whiteColor()
            viewController.title = titlesArray[indexPath.row]
            kNavigationController.pushViewController(viewController, animated: true)
            
            kMainViewController.hideLeftViewAnimated(true, completionHandler: nil)
        }
    }
}