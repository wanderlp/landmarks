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
        List(landmarks) { landmark in LandmarkRow(landmark: landmark)}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
