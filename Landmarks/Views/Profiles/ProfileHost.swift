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
    //  SwiftUI provides storage in the environment
    //  for values you can access using the
    //  @Environment property wrapper. Access the
    //  editMode value to read or write the edit
    //  scope.
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
