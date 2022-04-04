//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Wanderson López on 4/04/22.
//

import Foundation
import CoreGraphics

struct HexagonParameters {
    //  Each side starts where the previous ends,
    //  moves in a straight line to the first point, and
    //  then moves over a Bézier curve at the corner
    //  to the second point. The third point controls
    //  the shape of the curve.
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    // This adjustment lets you tune the shape of the hexagon
    static let adjustment: CGFloat = 0.085
    
    //  The values are stored as a fraction of a unit
    //  square having its origin in the upper left, with
    //  positive x to the right and positive y down.
    //  Later, you'll use these fractions to find the
    //  actual points of a hexagon with a given size.
    static let segments = [
        // 1
        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),
            curve:   CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        // 2
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        // 3
        Segment(
            line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
            curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
            control: CGPoint(x: 0.00, y: 0.75 - adjustment)
        ),
        // 4
        Segment(
            line:    CGPoint(x: 0.40, y: 0.95),
            curve:   CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        // 5
        Segment(
            line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
            curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
            control: CGPoint(x: 1.00, y: 0.75 - adjustment)
        ),
        // 6
        Segment(
            line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
            curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]
}
