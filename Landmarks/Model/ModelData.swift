//
//  ModelData.swift
//  Landmarks
//
//  Created by Wanderson López on 30/03/22.
//

import Foundation
import Combine

//  SwiftUI subscribes to your observable object,
//  and updates any views that need refresing
//  when the data changes.
final class ModelData: ObservableObject {
    //  Array Landmark is initializing from landmarkData.json
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

//  load(_:) method fetchs JSON data with a
//  given name from the app's main bundle.
//  This method relies on the return type's
//  conformance to the Decodable protocol,
//  which is one component of the Codable
//  protocol.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
