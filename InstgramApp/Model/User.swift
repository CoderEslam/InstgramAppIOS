//
//  User.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 14/7/23.
//

import Foundation


struct User : Identifiable /*id */ ,Codable ,Hashable{
    
    let id: String
    var username:String
    var profileImageUrl:String?
    var fullname :String?
    var bio :String?
    let email :String
    
}

extension User{
    
    static var MOCK_USER :[User] = [
        .init(id: NSUUID().uuidString, username: "Eslam",profileImageUrl: "tree",fullname: "Eslam Ghazy",bio: "Mobile Dv", email: "e@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Alaa",profileImageUrl: "heart",fullname: "Eslam Ghazy",bio: "Mobile Dv", email: "e@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Ali",profileImageUrl: "tree",fullname: nil ,bio: "Mobile Dv", email: "e@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Mohammed",profileImageUrl: "heart",fullname: "Eslam Ghazy",bio: "Mobile Dv", email: "e@gmail.com"),
    ]
    
}
