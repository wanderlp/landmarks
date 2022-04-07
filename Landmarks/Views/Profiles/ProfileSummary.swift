//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Wanderson López on 7/04/22.
//
//  The profile summary takes a Profile value
//  rather than a binding to the profile because
//  the parent view, ProfileHost, manages the
//  state for this view.

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack {
                Text(profile.username)
                    .bold()
                .font(.title)
                
                Text("Notifications: \(profile.prefersNotificacions ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
