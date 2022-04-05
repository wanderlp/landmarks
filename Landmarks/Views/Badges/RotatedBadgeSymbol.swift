//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Wanderson López on 5/04/22.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-40)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 0))
    }
}
