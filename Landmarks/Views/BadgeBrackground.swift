//
//  BadgeBrackground.swift
//  Landmarks
//
//  Created by Wanderson López on 4/04/22.
//

import SwiftUI

struct BadgeBrackground: View {
    var body: some View {
        //  Paths combine lines, curves, and other
        //  drawing primitives to form more complex
        //  shapes like the badge's hexagonal background.
        Path { path in
            //  Defining starting point to the path, assuming a
            //  container with size 100 x 100px.
            var width: CGFloat = 100.0
            let height = width
            path.move(
                to: CGPoint(
                    x: width * 0.95,
                    y: height * 0.20
                )
            )
            
            //  Drawing the lines for each point of the shape data
            //  to create a rough hexagonal shape.
            HexagonParameters.segments.forEach { segment in
                path.addLine(
                    to: CGPoint(
                        x: width * segment.line.x,
                        y: height * segment.line.y
                    )
                )
            }
        }
        .fill(.black)
    }
}

struct BadgeBrackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBrackground()
    }
}
