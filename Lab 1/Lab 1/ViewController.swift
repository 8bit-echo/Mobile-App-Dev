//
//  ViewController.swift
//  Lab 1
//
//  Created by Matt Dickey on 9/1/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var artTitle: UILabel!
    @IBOutlet weak var artMedium: UILabel!
    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    @IBAction func chooseArt(sender: UIButton) {
        if sender.tag==1{
            artTitle.text="Angel"
            artTitle.textColor=UIColor .blackColor()
            artMedium.text="2015 - Watercolor on Paper"
            artMedium.textColor=UIColor.blackColor()
            artMedium.font=UIFont.italicSystemFontOfSize(14.0)
            artImage.image=UIImage(named: "angel.png")
            backgroundImage.image=UIImage(named: "angel-background.png")
            
        }else if sender.tag==2{
            artTitle.text="Raven"
            artTitle.textColor=UIColor.whiteColor()
            artMedium.text="2013 - Digital"
            artMedium.textColor=UIColor.whiteColor()
            artMedium.font=UIFont.italicSystemFontOfSize(14.0)
            artImage.image=UIImage(named: "raven.png")
            backgroundImage.image=UIImage(named: "raven-background.png")
            
        }else if sender.tag==0{
            artTitle.text=""
            artMedium.text=""
            artImage.image=UIImage(named: "me.png")
            backgroundImage.image=UIImage(named: "default-background-image.png")
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

