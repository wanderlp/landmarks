//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Wanderson López on 30/03/22.
//
//  This view is a row for displaying details
//  about each landmark. This row view stores
//  information in a property for the landmark
//  it displays.
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
        
            Text(landmark.name)
            
            Spacer()
        }
    }
}

//  The code writed in a preview provider only
//  changes what Xcode displays in the canvas.
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(
            .fixed(width: 300, height: 70))
    }
}
