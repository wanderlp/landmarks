//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Wanderson López on 29/03/22.
//
//  An app that uses SwiftUI app life cycle has
//  a structure that conforms to the App protocol.
//  The structure's body property returns one or
//  more scenes, which in turn provide content for
//  display.

import SwiftUI

//  The @main attribute identifies the
//  app's entry point.
@main
struct LandmarksApp: App {
    //  The @StateObject attribute initialize a
    //  model object for a given property only once
    //  during the life time of the app. This is true
    //  when you use the attribute in an app instance,
    //  as shown here, as well as when you use it in a
    //  view.
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
