//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Wanderson López on 7/04/22.
//
//  This badge is just a graphic, so the text in
//  HikeBadge along with the accessibility
//  Label(_:) modifier make the meaning of the
//  badge clearer to other users.

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack {
            //  The badge's drawing logic produces a result
            //  that depends on the size of the frame in which
            //  it renders. To ensure the desired appearance,
            //  render in a frame of 300 x 300 points. To get
            //  the desired size for the final graphics, then
            //  scale the rendered result and place it in a
            //  comparably smaller frame.
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width:100, height: 100)
            
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
