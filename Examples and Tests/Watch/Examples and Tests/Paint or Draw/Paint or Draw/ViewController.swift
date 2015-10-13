//
//  ViewController.swift
//  Paint or Draw
//
//  Created by Matt Dickey on 9/1/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var artTitle: UILabel!
    @IBOutlet weak var artMedium: UILabel!
    
    @IBAction func buttonPressed(sender: UIButton) {
        if sender.tag == 1{
            artImage.image=UIImage(named: "angel.png")
            artTitle.text="Angel"
            artMedium.text=" 2015 - Watercolor on Paper"
        }else if sender.tag==2{
            artImage.image=UIImage(named: "raven.png")
            artTitle.text="The Raven"
            artMedium.text="2013 - Digital"
        }
        
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

