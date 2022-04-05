//
//  Badge.swift
//  Landmarks
//
//  Created by Wanderson López on 5/04/22.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        ZStack {
            BadgeBackground()
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
