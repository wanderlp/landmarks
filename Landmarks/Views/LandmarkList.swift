//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Wanderson López on 30/03/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //  Lists work with identificable data. You can make
        //  your data identifiable in one of two ways: by
        //  passing along with your data a key path to a
        //  property that uniquely identifies each element,
        //  or by making your data type conform to the
        //  Identifiable protocol.
        NavigationView {
            List(landmarks) { landmark in
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
        ForEach(["iPhone SE (3rd generation)", "iPhone XS Max", "iPad Pro (12.9-inch) (5th generation)"], id: \.self) {
                deviceName in LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
