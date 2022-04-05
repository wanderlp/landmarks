//
//  Badge.swift
//  Landmarks
//
//  Created by Wanderson López on 5/04/22.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        RotateBadgeSymbol(angle: Angle(degrees: 5))
            .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            badgeSymbols
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
