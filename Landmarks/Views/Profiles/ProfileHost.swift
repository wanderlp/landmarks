//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Wanderson López on 7/04/22.
//
//  The ProfileHost view will host both a static,
//  summary view of profile information and an
//  edit mode.

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
