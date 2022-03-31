//
//  Landmark.swift
//  Landmarks
//
//  Created by Wanderson López on 30/03/22.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
