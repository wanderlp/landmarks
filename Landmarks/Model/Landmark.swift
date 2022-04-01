//
//  Landmark.swift
//  Landmarks
//
//  Created by Wanderson López on 30/03/22.
//

import Foundation
import SwiftUI
import CoreLocation

//  Identifiable protocol requires id property
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    //  This is useful for interacting with the Mapkit
    //  framework
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
