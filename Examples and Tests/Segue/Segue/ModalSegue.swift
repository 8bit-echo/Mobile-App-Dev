//
//  ModalSegue.swift
//  
//
//  Created by Matt Dickey on 10/20/15.
//
//

import UIKit

class ModalSegue: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var dataField1: UITextField!
    @IBOutlet weak var dataField2: UITextField!
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "doneWithInput"{
            var scene1ViewController:ViewController = segue.destinationViewController as! ViewController
            //Check to see that text was entered in the fields
            if dataField1.text.isEmpty == false {
            scene1ViewController.userdata.data1 = dataField1.text
            }
            if dataField2.text.isEmpty == false{
                scene1ViewController.userdata.data2 = dataField2.text
            }
        }
    }
    
    
    

    override func viewDidLoad() {
        dataField1.delegate = self
        dataField2.delegate = self
        
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }
    
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
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
