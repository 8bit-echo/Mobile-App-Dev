//
//  ViewController.swift
//  helloworld
//
//  Created by Matt Dickey on 8/27/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var messageText: UILabel!
    
    @IBAction func buttonPressed(sender: UIButton) {
        messageText.text="Hello World"
        
    }


}

