//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Wanderson López on 2/04/22.
//

import SwiftUI

struct FavoriteButton: View {
    //  Because the @Binding attribute, changes made
    //  inside this view propagate back to the data
    //  source.
    @Binding var isSet: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
