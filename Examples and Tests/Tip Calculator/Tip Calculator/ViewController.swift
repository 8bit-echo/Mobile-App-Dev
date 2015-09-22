//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Matt Dickey on 9/17/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var checkAmount: UITextField!
    @IBOutlet weak var tipAmount: UITextField!
    @IBOutlet weak var partySize: UITextField!
    
    
    @IBOutlet weak var calculatedTip: UILabel!
    @IBOutlet weak var grandTotal: UILabel!
    @IBOutlet weak var splitTotal: UILabel!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateTipTotals(){
        let amount = (checkAmount.text as NSString).floatValue
        let pct = (tipAmount.text as NSString).floatValue/100
        let numberOfPeople;? = (partySize.text. ToInt()) //returns an optional
        let tip = amount*pct
        let total = amount+tip
        
        var personTotal : Float = 0.0
        if numberOfPeople != nil {
            if numberOfPeople! > 0 {
                personTotal = total / Float(numberOfPeople!)
            }
        }
        
        var currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle
        calculatedTip.text=currencyFormatter.stringFromNumber(tip)
        grandTotal.text=currencyFormatter.stringFromNumber(total)
        splitTotal.text=currencyFormatter.stringFromNumber(personTotal)
        
        
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateTipTotals()
    }

    override func viewDidLoad() {
        checkAmount.delegate = self
        tipAmount.delegate = self
        partySize.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

