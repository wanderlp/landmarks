//
//  ContentView.swift
//  Landmarks
//
//  Created by Wanderson López on 29/03/22.
//
//  By default, Swift UI view files declare two
//  structures

import SwiftUI

//  The first structure conforms to the View
//  protocol and describes the view's content
//  and layout.
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

//  The second structure declares a preview
//  for that view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
