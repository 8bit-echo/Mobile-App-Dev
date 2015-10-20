//
//  ViewController.swift
//  Segue
//
//  Created by Matt Dickey on 10/20/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
        var userdata = DataPasser()  //create the object for the userdata to go into
    
    
    @IBOutlet weak var dataLabel1: UILabel!
    @IBOutlet weak var dataLabel2: UILabel!
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
    
    dataLabel1.text = userdata.data1
    dataLabel2.text = userdata.data2
    
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
