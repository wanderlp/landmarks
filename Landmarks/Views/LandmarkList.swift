//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Wanderson López on 30/03/22.
//

import SwiftUI

struct LandmarkList: View {
    //  State is a value, or a set of values, that can change over
    //  time, and that affects a view's behavior, content, or layout.
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter {
            landmark in (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        //  Lists work with identificable data. You can make
        //  your data identifiable in one of two ways: by
        //  passing along with your data a key path to a
        //  property that uniquely identifies each element,
        //  or by making your data type conform to the
        //  Identifiable protocol.
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle(/*@START_MENU_TOKEN@*/"Landmarks"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
