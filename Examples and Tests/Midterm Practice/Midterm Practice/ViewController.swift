//
//  ViewController.swift
//  Midterm Practice
//
//  Created by Matt Dickey on 10/28/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var amountText: UITextField!
    @IBOutlet weak var taxText: UITextField!
    @IBOutlet weak var tipText: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    

    func updateTotals() {
        let amount = amountText.text.toInt()
        let salesTax = taxText.text as Float / 100
        let tip : Int? = tipText.text.toInt()
        
        let calculatedTotal = amount! * salesTax
        
        totalLabel.text = (calculatedTotal as! String)
        
    }
    
    
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateTotals()
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        amountText.delegate = self
        taxText.delegate = self
        tipText.delegate = self
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

