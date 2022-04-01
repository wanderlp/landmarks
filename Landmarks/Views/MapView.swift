//
//  MapView.swift
//  Landmarks
//
//  Created by Wanderson López on 29/03/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    //  You use the @State attribute to establish a
    //  source of truth for data in your app that you
    //  can modify from more than one view. Swift UI
    //  manages the underlying storage and
    //  automaticaally updates views that depend on
    //  the value.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        //  By prefixing a state with $, you pass a
        //  binding, which is like a reference to the
        //  underlying value. When the user interacts with
        //  the map, the map updates the region value to
        //  match the part of the map that's currently
        //  visible in the user interface.
        Map(coordinateRegion: $region)
    }
    
    //  This method updtaes the region based on a
    //  coordinate value.
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
