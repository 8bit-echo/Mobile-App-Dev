//
//  ViewController.swift
//  Imperial Converter
//
//  Created by Matt Dickey on 9/24/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var inchesTextField: UITextField!
    @IBOutlet weak var feetTextField: UITextField!
    @IBOutlet weak var milesTextField: UITextField!
    @IBAction func convertButton(sender: UIButton) {
        convertValues()
    }
    
    @IBAction func resetButton(sender: UIButton) {
        inchesTextField.text=nil
        feetTextField.text = nil
        milesTextField.text = nil
        locationImage.image = UIImage(named: "america.png")
        
    }
    
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var cmLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var kmLabel: UILabel!
    
    
    func convertValues(){
        locationImage.image = UIImage(named: "everywhere.png")
        let inches = (inchesTextField.text as NSString).doubleValue
        let feet = (feetTextField.text as NSString).doubleValue
        let miles = (milesTextField.text as NSString).doubleValue
        
        let cm = inches * 2.54
        let m = feet * 0.3048
        let km = miles * 1.60934
        
        cmLabel.text = "\(cm) cm"
        mLabel.text = "\(m) m"
        kmLabel.text = "\(km) km"
        
        let alert = UIAlertController(title: "Seriously", message: "Get it together, America", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        inchesTextField.delegate = self
        feetTextField.delegate = self
        milesTextField.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

