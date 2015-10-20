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
    
    
    //Location Storage
    @IBOutlet weak  var mapView: MKMapView!
                    var locationManager = CLLocationManager()
                    var localAnnotation = MKPointAnnotation()
    

    

    // Audio Player Storage
    var audioPlayer: AVAudioPlayer?
    
    
    @IBAction func getLocation(sender: UIButton) {
            let userlocation = mapView.userLocation
            let userCoordinates = userlocation.coordinate
            let span = MKCoordinateSpanMake(0.015, 0.015)
            let region = MKCoordinateRegionMakeWithDistance(userlocation.location.coordinate, 0.015, 0.015)
            mapView.setRegion(region, animated: true)
            localAnnotation.coordinate = userCoordinates
            localAnnotation.title = "You're right here"
            localAnnotation.subtitle = "Mom's Spaghetti"
            mapView.addAnnotation(localAnnotation)
            mapView.mapType = MKMapType.Standard
        
    }
    

    @IBAction func getDetroit(sender: UIButton) {
        let detroit = CLLocationCoordinate2D(latitude: 42.442919, longitude: -83.0020839)
        let span = MKCoordinateSpanMake(0.015, 0.015)
        let region = MKCoordinateRegion(center: detroit, span: span)
        mapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = detroit
        annotation.title = "Eminem's 8 mile Trailer Park"
        annotation.subtitle = "19946 Dresden St."
        mapView.addAnnotation(annotation)
        mapView.mapType = MKMapType.Standard
        
        
        // MOM'S SPAGHETTI!!!!
        let audioFilePath = NSBundle.mainBundle().pathForResource("8mile", ofType: ".mp3")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        
        if audioPlayer != nil {
            audioPlayer!.play()
        }
        
    
    }

    
    
    override func viewDidLoad() {

        mapView.mapType=MKMapType.Hybrid //hybrid with map and satellite
        var status:CLAuthorizationStatus = CLLocationManager.authorizationStatus()
        if status==CLAuthorizationStatus.NotDetermined{
            locationManager.requestWhenInUseAuthorization()  //ios8 and later only
        }
        locationManager.delegate=self
        locationManager.desiredAccuracy=kCLLocationAccuracyBest //specify the desired accuracy
        locationManager.distanceFilter=kCLDistanceFilterNone //specify the distance a device must move laterally(in meters) to generate an update. We specify to be notified of all movements
        mapView.showsUserLocation=true
        super.viewDidLoad()
    }
    
    //CLLocationManagerDelegate methods
    
    //called when the authorization status for the application changed.
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status==CLAuthorizationStatus.AuthorizedWhenInUse {
            locationManager.startUpdatingLocation() //starts the location manager
        }
    }
    
    //called when a location cannot be determined
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        var errorType=String()
        if let clError=CLError(rawValue: error.code) {
            if clError == .Denied {
                errorType="access denied"
                let alert=UIAlertController(title: "Error", message: errorType, preferredStyle: UIAlertControllerStyle.Alert)
                let okAction:UIAlertAction=UIAlertAction(title: "OK", style:UIAlertActionStyle.Default, handler: nil)
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    
    
    

}






