//
//  ViewController.swift
//  iTimes
//
//  Created by Matt Dickey on 10/12/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {




    @IBOutlet weak var timeLabel: UILabel!
    
    var counter = 0
    var timer : NSTimer = NSTimer()
   
    
    @IBAction func resetButton(sender: UIButton) {
        timer.invalidate()
        counter = 0
        timeLabel.text = String(counter)
    }
    @IBAction func pauseButon(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func playButton(sender: UIBarButtonItem) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTimer"), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
        timeLabel.text = String(++counter)
        
    }
    
    
    
    
    override func viewDidLoad() {
        timeLabel.text = String(counter)
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

