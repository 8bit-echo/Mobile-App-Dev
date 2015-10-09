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
    
    //Get Current time and return the values for each component as an Int
    func getDate() -> (hours: Int, minutes: Int, seconds: Int){
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let formatter = NSDateFormatterStyle.MediumStyle
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond, fromDate: date)
        var hour = components.hour
        let minute = components.minute
        let second = components.second
        
        // Update Digital readout
        currentTimeLabel.text = "\(hour):\(minute):\(second)"
        
        return (hours: hour, minutes: minute, seconds: second)
    }
    
    //unwrap the Tuple into variable to use for translation
    let timeTuple = getDate
//    var returnedHour = timeTuple.hours
//    var returnedMin = timeTuple.minutes
//    timeTuple.seconds
//    
//    //Fix some minor formatting issues
//    
//    if returnedHour > 12 {
//    returnedHour = returnedHour % 12
//    }else if returnedHour == 0 {
//    returnedHour = 12
//    }
    
//    //convert current time into rotation (deg) of clock hands
//    
//    let hourHandRotation = returnedHour * 30
//    let minuteHandRotation = returnedMin * 12
//    

    

    override func viewDidLoad() {
        getDate()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

