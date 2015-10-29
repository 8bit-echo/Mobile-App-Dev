//
//  ViewController.swift
//  Midterm
//
//  Created by Matt Dickey on 10/29/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var monthlyCommuteSwitch: UISwitch!
    @IBOutlet weak var gasTankSlider: UISlider!
    @IBOutlet weak var vehicleController: UISegmentedControl!
    @IBOutlet weak var commueTimeLabel: UILabel!
    @IBOutlet weak var gasPurchaseLabel: UILabel!
    @IBOutlet weak var vehicleView: UIImageView!
    
    var monthlyMultiplier : Float?
    var speed: Float = 20.0
    let busWait: Float = 10.0
    
    
    
    @IBAction func showMonthly(sender: UISwitch) {
        if monthlyCommuteSwitch.on {
            monthlyMultiplier = 20.0
        } else {
            monthlyMultiplier = nil
        }
    }
    
    
    @IBAction func segmentedControlChanged(sender: UISegmentedControl) {
        if vehicleController.selectedSegmentIndex == 0 {
            vehicleView.image = UIImage(named: "car_icon.png")
            speed = 20.0
            calculateGas()
            
            
        }else if vehicleController.selectedSegmentIndex == 1 {
            vehicleView.image = UIImage(named: "bus_icon.png")
            speed = 12.0
            gasPurchaseLabel.text = "00.00 gallons"
            
        }else if vehicleController.selectedSegmentIndex == 2 {
            vehicleView.image = UIImage(named: "bike_icon.png")
            speed = 10.0
            gasPurchaseLabel.text = "00.00 gallons"
        }
    }
    
    
    @IBAction func updateResults(sender: UIButton) {
        let trip = (milesTextField.text as NSString).floatValue
        var commuteTime: Float = (trip / speed) * 60.0
        
        if monthlyMultiplier != nil{
            commuteTime = (trip / speed) * 60.0 * monthlyMultiplier!
        }
        
        if vehicleController.selectedSegmentIndex == 1{
            commuteTime = commuteTime + busWait
        }
        commueTimeLabel.text = "\(commuteTime) mins"
        
        
        if trip > 50.00 && vehicleController.selectedSegmentIndex == 0{
            let alertView = UIAlertController(title: "Long Trip", message: "Your commute is over 50 miles. Consider carpooling", preferredStyle: .Alert)
            alertView.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
            presentViewController(alertView, animated: true, completion: nil)
        }
        
    }
    
    func calculateGas() {
        var trip = (milesTextField.text as NSString).floatValue
        let mpg: Float = 24.0
        
        if monthlyCommuteSwitch.on {
            trip = trip * 20.0
        }
        let gallons = trip / mpg

        gasPurchaseLabel.text = "\(gallons) gallons"
    }
    
    
    
//    let alertView = UIAlertController(title: "Long Commute", message: "Your commute is more than 50 miles. Consider carpooling", preferredStyle: .Alert)
    
    


    override func viewDidLoad() {
        milesTextField.delegate = self
        
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            return true
        }
        

        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

