//
//  CircleImage.swift
//  Landmarks
//
//  Created by Wanderson López on 29/03/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable(resizingMode: .stretch)
            .frame(width: 250.0, height: 250.0)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {    
        CircleImage(image: Image("turtlerock"))
    }
}
