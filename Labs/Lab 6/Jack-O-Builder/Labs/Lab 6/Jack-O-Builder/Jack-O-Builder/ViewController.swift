//
//  ViewController.swift
//  Jack-O-Builder
//
//  Created by Matt Dickey on 10/18/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate, AVAudioPlayerDelegate {
    

    
    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        
        let translation = sender.translationInView(view)
        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: view)
    }
    
    @IBAction func handlePinch(sender: UIPinchGestureRecognizer) {
        sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale=1
        //resets scale
    }
    
    @IBAction func handleRotation(sender: UIRotationGestureRecognizer) {
        sender.view!.transform = CGAffineTransformRotate(sender.view!.transform, sender.rotation)
        sender.rotation=0 //reset rotation
    }
    
    @IBAction func playAudioClip(sender: UILongPressGestureRecognizer) {
        var audioPlayer : AVAudioPlayer?
        let audioFilePath = NSBundle.mainBundle().pathForResource("Halloween", ofType: "mp3")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil{
            audioPlayer!.play()
        }
    }
    

    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
       return true
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

