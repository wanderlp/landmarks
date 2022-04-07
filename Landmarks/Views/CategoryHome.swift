//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Wanderson López on 7/04/22.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        //  Use NavigationViews along with
        //  NavigationLink instances and related
        //  modifiers to build hierarchical navigation
        //  structures in your app.
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
