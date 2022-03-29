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
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
