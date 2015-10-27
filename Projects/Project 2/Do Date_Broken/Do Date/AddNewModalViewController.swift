//
//  AddNewModalViewController.swift
//  
//
//  Created by Matt Dickey on 10/25/15.
//
//

import UIKit
import CoreData

class AddNewModalViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var assignmentNameTextField: UITextField!
    @IBOutlet weak var assignmentDescriptionTextField: UITextField!
    @IBOutlet weak var dueDateLabel: UILabel!
    var datetoPass: String?
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    @IBAction func cancelButton(sender: UIBarButtonItem) {}
    
    

    @IBAction func addTask(sender: UIButton) {
        if assignmentNameTextField.text == ""{
            //Do Nothing
        }else{
            let name : String = assignmentNameTextField.text!
            let description : String = assignmentDescriptionTextField.text!
            //let arbitraryDate? : String = datetoPass! as String
            
            taskMgr.addTask(name, desc: description)
            
            //dismiss keyboard
            self.view.endEditing(true)
    }

    

    }
    ////////
    @IBAction func datePickerChanged(sender: UIDatePicker){
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        var dateAsString = dateFormatter.stringFromDate(dueDatePicker.date)
        
        func textFieldShouldReturn(textField: UITextField) -> Bool{
            textField.resignFirstResponder()
            return true
        }
        
        dueDateLabel.text = dateAsString
        datetoPass = dateAsString
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.  
        
        dueDateLabel.text = ""
        
        assignmentNameTextField.delegate = self
        assignmentDescriptionTextField.delegate = self
        
        //Keyboard things
        func textFieldShouldReturn(textField: UITextField) -> Bool{
            textField.resignFirstResponder()
            return true
        }
    }
}
