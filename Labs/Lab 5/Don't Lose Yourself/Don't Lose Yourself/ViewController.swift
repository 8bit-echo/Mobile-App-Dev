//
//  ViewController.swift
//  Don't Lose Yourself
//
//  Created by Matt Dickey on 10/15/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import AVFoundation

class ViewController: UIViewController, CLLocationManagerDelegate, AVAudioPlayerDelegate {

    @IBOutlet weak  var MapView: MKMapView!
                    var audioplayer: AVPlayer?
                    let audioFileName = "8mile.mp3"
    
    
    
    @IBAction func getLocation(sender: UIButton) {
        
    }
    
    @IBAction func getDetroit(sender: UIButton) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

