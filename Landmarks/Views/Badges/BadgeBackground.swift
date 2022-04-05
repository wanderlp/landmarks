//
//  BadgeBrackground.swift
//  Landmarks
//
//  Created by Wanderson López on 4/04/22.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        //  Wrap the path in a GeometryReader so the
        //  badge can use the size of its containing view,
        //  which defines the size instead of hard-coding
        //  the value 100.
        GeometryReader { geometry in
            //  Paths combine lines, curves, and other
            //  drawing primitives to form more complex
            //  shapes like the badge's hexagonal background.
            Path { path in
                //  Defining starting point to the path, assuming a
                //  container with size 100 x 100px.
                //var width: CGFloat = 100.0
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                
                //  Scales the shape on the x-axis using xScale,
                //  and then add xOffset to recenter the shape
                //  within its geometry.
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                
                path.move(
                    to: CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * 0.20 + HexagonParameters.adjustment
                    )
                )
                
                //  Drawing the lines for each point of the shape data
                //  to create a rough hexagonal shape.
                HexagonParameters.segments.forEach { segment in
                    //  The addLine(to:) method takes a single
                    //  point and draws it. Successive calls to add
                    //  Line(to:) begin a line at the previous point
                    //  and cointinue to the new point.
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    
                    //  Use the addQuadCurve(to:control:)
                    //  method to draw the Bézier curves for the
                    //  badge's corner
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
            }
            .fill(.linearGradient(
                Gradient(
                    colors: [
                        Self.gradientStart,
                        Self.gradientEnd
                    ]
                ),
                startPoint: UnitPoint(x: 0.5, y: 0.0),
                endPoint:   UnitPoint(x: 0.5, y: 0.6)
            ))
        }
        //  By preserving a 1:1 aspect ratio, the badge
        //  maintains its position at the center of the view,
        //  even if its ancestor views aren't square
        .aspectRatio(1, contentMode: .fit)
    }
    
    static let gradientStart = Color(
        red:   239.0 / 255,
        green: 120.0 / 255,
        blue:  221.0 / 255
    )
    
    static let gradientEnd = Color(
        red:   239.0 / 255,
        green: 172.0 / 255,
        blue:  120.0 / 255
    )
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
