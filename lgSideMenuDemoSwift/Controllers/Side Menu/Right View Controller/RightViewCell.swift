//
//  RightViewCell.swift
//  lgSideMenuDemoSwift
//
//  Created by United States of America on 17/01/16.
//  Copyright © 2016 alucard.us. All rights reserved.
//

import UIKit

class RightViewCell: UITableViewCell {
    @IBOutlet var separatorView: UIView?
    var _tintColor: UIColor?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.clearColor()
        self.textLabel?.textAlignment = .Center
        self.textLabel?.numberOfLines = 0
        self.textLabel?.lineBreakMode = .ByWordWrapping
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.textLabel?.textColor = _tintColor
        separatorView?.backgroundColor = _tintColor?.colorWithAlphaComponent(0.4)
    }
    
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        if highlighted {
            self.textLabel?.textColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 1.0)
        } else {
            self.textLabel?.textColor = _tintColor
        }
    }
}