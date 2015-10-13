//
//  InterfaceController.swift
//  Faces WatchKit Extension
//
//  Created by Matt Dickey on 9/10/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBOutlet weak var sHand: WKInterfaceImage!

    @IBAction func rotateImage() {
        
//        //ui image orientation + number of dergrees around center, every second.
//        UIView.animateWithDuration(2.0, animations: {
//            self.sHand.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)
//        })
        
    }
    
    
    
}
