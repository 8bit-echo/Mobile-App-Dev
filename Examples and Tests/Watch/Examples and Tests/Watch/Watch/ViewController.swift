//
//  ViewController.swift
//  Watch
//
//  Created by Matt Dickey on 10/8/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var secondHand: UIImageView!
    @IBOutlet weak var minuteHand: UIImageView!
    @IBOutlet weak var hourHand: UIImageView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getDate()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Get Current time and return the values for each component as an Int
    func getDate() -> (hours: Int, minutes: Int, seconds: Int){
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let formatter = NSDateFormatterStyle.MediumStyle
        
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond, fromDate: date)
        let hour = components.hour
        let minute = components.minute
        let second = components.second
        
        
        return (hours: hour, minutes: minute, seconds: second)
    }
    

    
    
    var timer : NSTimer = NSTimer()
    
    func updateTime() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: currentTimeLabel, selector:"getDate", userInfo: nil, repeats: true)
        
        // Update Digital readout
        currentTimeLabel.text = "\(getDate().hours):\(getDate().minutes):\(getDate().seconds)"
    }
    

    
    
    
    
    
    
    
    
    
    
    

    
    


}

