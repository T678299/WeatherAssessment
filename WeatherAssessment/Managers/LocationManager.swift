//
//  LocationManager.swift
//  WeatherAssessment
//
//  Created by Vincent Emmanuel Vizconde Cornejo on 12/10/24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let clLocationManager = CLLocationManager()
    
    @Published var loc: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        clLocationManager.delegate = self
    }
    
    func requestLocation(){
        isLoading = true
        clLocationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        loc = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting location", error)
        isLoading = false
    }
}
