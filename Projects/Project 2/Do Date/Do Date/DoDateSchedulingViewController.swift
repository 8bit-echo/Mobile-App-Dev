//
//  DoDateSchedulingViewController.swift
//  
//
//  Created by Matt Dickey on 10/26/15.
//
//

import UIKit
import CoreData

class DoDateSchedulingViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var deadlinePicker: UIDatePicker!
    
    @IBAction func savePressed(sender: UIButton) {
        let doDateItem = DoDateItem(deadline: deadlinePicker.date, title: titleField.text, desc: descriptionField.text, UUID: NSUUID().UUIDString)
        DoDateList.sharedInstance.addItem(doDateItem)
        
        //Connected this button to unwindsegue also
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.delegate = self
        descriptionField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

