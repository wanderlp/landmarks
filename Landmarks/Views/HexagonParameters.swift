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
}
