//
//  ViewController.swift
//  Jack-O-Builder
//
//  Created by Matt Dickey on 10/18/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate, AVAudioPlayerDelegate{

    //List of Outlets
    @IBOutlet weak var classicEyeLeft: UIImageView!     // 0
    @IBOutlet weak var classicEyeRight: UIImageView!    // 1
    @IBOutlet weak var diamondEyeLeft: UIImageView!     // 2
    @IBOutlet weak var diamondEyeRight: UIImageView!    // 3
    @IBOutlet weak var halfMoonLeft: UIImageView!       // 4
    @IBOutlet weak var halfMoonRight: UIImageView!      // 5
    @IBOutlet weak var graphicEyeLeft: UIImageView!     // 6
    @IBOutlet weak var graphicEyeRight: UIImageView!    // 7
    @IBOutlet weak var nose: UIImageView!               // 8
    @IBOutlet weak var jaggedMouth: UIImageView!        // 9
    @IBOutlet weak var scaryMouth: UIImageView!         // 10
    @IBOutlet weak var classicMouth: UIImageView!       // 11
    @IBOutlet weak var spikeyMouth: UIImageView!        // 12
    
   
    
    
    
    @IBAction func panMoveableImage(sender: UIPanGestureRecognizer) {
        let translation = sender.translationInView(view)
        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: view)
    }
    
    @IBAction func pinchMoveableImage(sender: UIPinchGestureRecognizer) {
        sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale=1
        //resets scale
    }
    
    @IBAction func rotateMoveableImage(sender: UIRotationGestureRecognizer) {
        sender.view!.transform = CGAffineTransformRotate(sender.view!.transform, sender.rotation)
        sender.rotation=0 //reset rotation
    }
    

   // Play audio on pumpkin
    @IBAction func playAudioClip(sender: UILongPressGestureRecognizer) {
        var audioPlayer : AVAudioPlayer?
        let audioFilePath = NSBundle.mainBundle().pathForResource("Halloween", ofType: "mp3")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil{
            audioPlayer!.play()
        }
    }
    
 
    //Allow multuiple Gestures at once
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
       return true
    }
    
    

    override func viewDidLoad() {
        
        //Create Array of all Images that should be able to move
        let moveableImages: [UIImageView] = [ classicEyeLeft, classicEyeRight, diamondEyeLeft, diamondEyeRight, halfMoonLeft, halfMoonRight, graphicEyeLeft, graphicEyeRight, nose, jaggedMouth, scaryMouth, classicMouth, spikeyMouth]
        
        
        
        
        
        
        
        
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

