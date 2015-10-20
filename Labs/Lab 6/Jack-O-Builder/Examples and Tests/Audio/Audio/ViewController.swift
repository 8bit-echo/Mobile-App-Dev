//
//  ViewController.swift
//  Audio
//
//  Created by Matt Dickey on 10/15/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {

    var audioPlayer: AVAudioPlayer?
    var audioRecorder: AVAudioRecorder?
    let fileName = "audio.caf"
    
    
    @IBOutlet weak var recordOutlet: UIButton!
    @IBAction func recordButton(sender: AnyObject) {
        if audioRecorder?.recording == false{
            playOutlet.enabled = false
            stopOutlet.enabled = true
            audioRecorder?.record()
        }
        
        
    }
    
    
    @IBOutlet weak var playOutlet: UIButton!
    @IBAction func playButton(sender: UIButton) {
        if audioRecorder?.recording == false{
            stopOutlet.enabled = true
            recordOutlet.enabled = false
            var error: NSError?
            
            audioPlayer = AVAudioPlayer(contentsOfURL: audioRecorder?.url, error: &error)
            
            if let err = error{
                println("AVAudioPlayer error: \(err.localizedDescription)")
            }else {
                audioPlayer?.delegate=self
                audioPlayer?.play()
            }
        }
        
    }
    
    
    @IBOutlet weak var stopOutlet: UIButton!
    @IBAction func stopButton(sender: UIButton) {
        if audioRecorder?.recording == true{
            stopOutlet.enabled = true
            recordOutlet.enabled = false
            playOutlet.enabled = false
            
            if audioRecorder?.recording == true{
                audioRecorder?.stop()
            
        }else{
            audioPlayer?.stop()
            }
        }
    }
    
    
    
     override func viewDidLoad() {
        playOutlet.enabled = false
        stopOutlet.enabled = false
        
        let dirPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentationDirectory,NSSearchPathDomainMask.UserDomainMask, true)
        let docDir = dirPath[0] as! String
        let audioFilePath = docDir.stringByAppendingPathComponent(fileName)
        let audioFileURL = NSURL(fileURLWithPath: audioFilePath)
        
        
        let recorderSettings = [AVEncoderAudioQualityKey: AVAudioQuality.Min.rawValue, AVEncoderBitRateKey: 16, AVNumberOfChannelsKey: 2, AVSampleRateKey:44100.0]
        var error : NSError?
        
        audioRecorder = AVAudioRecorder(URL: audioFileURL, settings: recorderSettings as [NSObject : AnyObject], error: &error)
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

