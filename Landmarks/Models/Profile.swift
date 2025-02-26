//
//  Profile.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/24/25.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotificaitons = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let draft = Profile(username: "wylan_n")

     enum Season: String, CaseIterable, Identifiable {
         case spring = "🌷"
         case summer = "🌞"
         case autumn = "🍂"
         case winter = "☃️"

         var id: String { rawValue }
     }
    
}
