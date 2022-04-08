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
                if (editMode?.wrappedValue == .active) {
                    //  Unlike the Done button that EditButton
                    //  provides, the Cancel button doesn't apply the
                    //  edits to the real profile data in its closure.
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
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
