//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Wanderson López on 7/04/22.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        //  Use NavigationViews along with
        //  NavigationLink instances and related
        //  modifiers to build hierarchical navigation
        //  structures in your app.
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
