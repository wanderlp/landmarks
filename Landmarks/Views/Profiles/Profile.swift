//
//  Profile.swift
//  Landmarks
//
//  Created by Wanderson López on 7/04/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotificacions = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "wanderlp")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
