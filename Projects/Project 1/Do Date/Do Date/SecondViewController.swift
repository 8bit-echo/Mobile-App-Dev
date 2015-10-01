//
//  SecondViewController.swift
//  Do Date
//
//  Created by Matt Dickey on 9/25/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    @IBOutlet weak var taskText: UITextField!
    @IBOutlet weak var taskDesc: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    

    @IBAction func datePickerChanged(sender: UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        
        var dateAsString = dateFormatter.stringFromDate(datePicker.date)
        
        dateLabel.text = dateAsString
        
        
    }

    
    
    
    
    
    @IBAction func addTaskButton(sender: UIButton) {
        if taskText.text == ""{
        //Do Nothing
        }else{
            let name : String = taskText.text!
            let description : String = taskDesc.text!
            let abritraryDate : String! = "10/1"
            taskMgr.addTask(name, desc: description, date: "")
            
            //dismiss keyboard
            self.view.endEditing(true)
            taskText.text = nil
            taskDesc.text = nil
            
        }
    }
    
    
    //Keyboard things
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

