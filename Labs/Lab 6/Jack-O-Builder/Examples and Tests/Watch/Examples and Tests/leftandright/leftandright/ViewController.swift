//
//  ViewController.swift
//  leftandright
//
//  Created by Matt Dickey on 8/27/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func buttonPressed(sender: UIButton) {
        let title = sender.titleForState(.Normal)!
        let plainText = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [
            NSFontAttributeName:
                UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)
        ]
        let nameRange = (plainText as NSString).rangeOfString(title)
        styledText.setAttributes(attributes, range:nameRange)
        
        statusLabel.attributedText = styledText
    }

}

