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
    
    var audioPlayer1 : AVAudioPlayer?
    var audioRecorder1 : AVAudioRecorder?
    let track1 = "track1.caf"
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    
    
    @IBAction func record(sender: UIButton){
        
        fadeAnimation(recordingLight, enabled: true)
        
        playButton.enabled = true
        stopButton.enabled = true
        audioRecorder1?.record()

    }
    @IBAction func play(sender: UIButton) {
        stopButton.enabled = true
        playbackLight.image = UIImage(named: "play.png")
        
        var error : NSError?
        
        audioPlayer1 = AVAudioPlayer(contentsOfURL: audioRecorder1?.url, error: &error)
        //test for error
        if let err = error {
            println("AVAudioPlayer error: \(err.localizedDescription)")
        } else {
            audioPlayer1?.delegate=self
        }
        
    }
    
    @IBAction func stop(sender: UIButton) {
        fadeAnimation(recordingLight, enabled: false)
        blinkAnimation(recordingText, isRunning: false)
        playbackLight.image = UIImage(named: "default.png")
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
        
        
        playButton.enabled = false
        stopButton.enabled = false
        
        
        let dirPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
            let docDir = dirPath[0] as! String
            let audioFilePath = docDir.stringByAppendingPathComponent(track1)
            let audioFileURL = NSURL(fileURLWithPath: audioFilePath)
        
        let recordSettings = [AVEncoderAudioQualityKey: AVAudioQuality.Medium.rawValue, AVEncoderBitRateKey: 16, AVNumberOfChannelsKey: 2, AVSampleRateKey: 44100.0]
        var error: NSError?
        audioRecorder1 = AVAudioRecorder(URL: audioFileURL, settings: recordSettings as! [NSObject: AnyObject], error: &error)
        
        if let err = error {
            println("AVAudioRecorder error: \(err.localizedDescription)")
        } else { //no error
            audioRecorder1?.delegate = self
        }
        
     func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
            recordButton.enabled = true
            stopButton.enabled = false }
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

