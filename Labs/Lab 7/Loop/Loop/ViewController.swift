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
    
    var audioPlayer1 : AVAudioPlayer?
    var audiRecorder1 : AVAudioRecorder?
    let track1 = "track1.caf"
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    
    
    @IBAction func record(sender: UIButton){
        
        fadeAnimation(recordingLight, enabled: true)
        
        playButton.enabled = true
        stopButton.enabled = true

    }
    @IBAction func play(sender: UIButton) {
        stopButton.enabled = true
        
    }
    
    @IBAction func stop(sender: UIButton) {
        fadeAnimation(recordingLight, enabled: false)
        blinkAnimation(recordingText, isRunning: false)
        
        stopButton.enabled = true
        
        
    }
    
 
    func fadeAnimation(name: UIImageView, enabled: Bool) {
        var fadeAnimation = CAKeyframeAnimation(keyPath: "opacity")
        fadeAnimation.keyTimes = [0, 0.5, 1]
        fadeAnimation.duration = 2
        var isRunning: Bool = enabled
        
        
        if isRunning != false {
            fadeAnimation.values = [0, 1, 0]
            fadeAnimation.repeatDuration = CFTimeInterval(Float.infinity)
        }else{
            fadeAnimation.duration = 0
            fadeAnimation.repeatDuration = CFTimeInterval(Int(0))
        }
        name.layer.addAnimation(fadeAnimation, forKey: "opacity")
    }
    
    
    
    func blinkAnimation(name: UIView, isRunning: Bool?){
        var blink = CAKeyframeAnimation(keyPath: "opacity")
        blink.keyTimes = [0, 0.5, 1]
        blink.values = [0, 1, 0]
        blink.duration = 2
        blink.repeatDuration = CFTimeInterval(Float.infinity)
        name.layer.addAnimation(blink, forKey: "opacity")
        var isRunning : Bool?
        
        if isRunning != false {
            blink.values = [0, 1, 0]
            blink.repeatDuration = CFTimeInterval(Float.infinity)
        }else{
            blink.values = [0,0,0]
            blink.repeatDuration = CFTimeInterval(Int(0))
        }
    }
    
    
    override func viewDidLoad() {
        
        //fadeAnimation(activeRecordingText)
        //blinkAnimation(activeRecordingLight)
        
        playButton.enabled = false
        stopButton.enabled = false
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

