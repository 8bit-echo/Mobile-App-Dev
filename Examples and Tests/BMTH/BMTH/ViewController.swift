//
//  ViewController.swift
//  BMTH
//
//  Created by Matt Dickey on 9/15/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSliderOutlet: UISlider!
    @IBOutlet weak var fontSizeLabel: UILabel!

    
    
    func updateCaps(){
        if capitalSwitch.on{
            imageLabel.text=imageLabel.text?.uppercaseString
        } else {
            imageLabel.text = imageLabel.text?.lowercaseString
        }
    }
    
    func updateImage(){
        if imageControl.selectedSegmentIndex == 0 {
            imageLabel.text = "Count Your Blessings"
            mainImage.image = UIImage(named: "countYourBlessings.png")
            background.image = UIImage(named: "countYourBlessings.png")
        }else if imageControl.selectedSegmentIndex == 1 {
            imageLabel.text = "Suicide Season"
            mainImage.image = UIImage(named: "suicideSeason.png")
            background.image = UIImage(named: "suicideSeason.png")
        }else if imageControl.selectedSegmentIndex == 2 {
            imageLabel.text = "There is a Hell"
            mainImage.image = UIImage(named: "thereIsAHell.png")
            background.image = UIImage(named: "thereIsAHell.png")
        }else if imageControl.selectedSegmentIndex == 3 {
            imageLabel.text = "Sempiternal"
            mainImage.image = UIImage(named: "sempiternal.png")
            background.image = UIImage(named: "sempiternal.png")
        }else if imageControl.selectedSegmentIndex == 4 {
            imageLabel.text = "That's The Spririt"
            mainImage.image = UIImage(named: "thatsTheSpirit.png")
            background.image = UIImage(named: "thatsTheSpirit.png")
        }
    }

    @IBAction func updateFont(sender: UISwitch) {
        updateCaps()
    }

    @IBAction func recordChooser(sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    
    @IBAction func fontSliderAction(sender: UISlider) {
        let fontSize = sender.value
        fontSizeLabel.text = String(format: "%.0f", fontSize)
        let fontSizeCGFloat = CGFloat(fontSize)
        imageLabel.font=UIFont.systemFontOfSize(fontSizeCGFloat)
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

