//
//  ViewController.swift
//  AntiAmnesia
//
//  Created by Matt Dickey on 10/29/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        
    }
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        
            
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

