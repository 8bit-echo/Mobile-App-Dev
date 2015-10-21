//
//  ViewController.swift
//  Loop
//
//  Created by Matt Dickey on 10/20/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    @IBOutlet weak var recordingLight: UIImageView!
    @IBOutlet weak var recordingText: UILabel!
    @IBOutlet weak var activeRecordingText: UILabel!
    @IBOutlet weak var activeRecordingLight: UIImageView!
    
    @IBOutlet weak var playbackText: UILabel!
    @IBOutlet weak var activePlaybackText: UILabel!
    @IBOutlet weak var playbackLight: UIImageView!
    @IBOutlet weak var activePlayBackLight: UIImageView!

 
    func fadeAnimation(name: UIView) {
        var fadeAnimation = CAKeyframeAnimation(keyPath: "opacity")
        fadeAnimation.keyTimes = [0, 0.5, 1]
        fadeAnimation.values = [0, 1, 0]
        fadeAnimation.duration = 3
        fadeAnimation.repeatDuration = CFTimeInterval(Float.infinity)
        name.layer.addAnimation(fadeAnimation, forKey: "opacity")
    }
    
    func blinkAnimation(name: UIImageView){
        var blink = CAKeyframeAnimation(keyPath: "opacity")
        blink.keyTimes = [0, 0.5, 1]
        blink.values = [0, 1, 0]
        blink.duration = 2
        blink.repeatDuration = CFTimeInterval(Float.infinity)
        name.layer.addAnimation(blink, forKey: "opacity")
    }
    
    override func viewDidLoad() {
        
        fadeAnimation(activeRecordingText)
        blinkAnimation(activeRecordingLight)
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

