//
//  ViewController.swift
//  MapViewPractice
//
//  Created by Suraj MAC2 on 2/17/16.
//  Copyright © 2016 supaint. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    //Generals
    let initialLocation = CLLocation(latitude: 20.0000, longitude: 73.7800)
    let regionRadius : CLLocationDistance = 1000
    //Controlls
    @IBOutlet weak var mapView: MKMapView!
    
    
    //Let's Play
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        centerMapOnLocation(initialLocation)
    }

    func centerMapOnLocation (location:CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius*2, regionRadius*2)
        mapView.setRegion(coordinateRegion, animated: true)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

