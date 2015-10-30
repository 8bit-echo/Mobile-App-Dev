//
//  SecondViewController.swift
//  
//
//  Created by Matt Dickey on 10/29/15.
//
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    
    
    let myID = Identity()
    
    
    
    @IBAction func saveData(sender: UIBarButtonItem) {
        
        
        var dateformatter = NSDateFormatter()
        dateformatter.dateStyle = NSDateFormatterStyle.LongStyle
        var dateAsString = dateformatter.stringFromDate(birthdayPicker.date)
        
        
        firstNameTextField.text = myID.fName
        lastNameTextField.text = myID.lName
        dateAsString = myID.birthday
        
        
    }
    
 

    override func viewDidLoad() {
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
