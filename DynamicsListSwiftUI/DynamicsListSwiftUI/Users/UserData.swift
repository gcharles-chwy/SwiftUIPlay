//
//  UserData.swift
//  DynamicsListSwiftUI
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

class UserData {
    static let shared = UserData()
    let starterUsers: [User] = [
         .init(id: 0, username: "Ryan Stone", message: "I chew code at Chewy", imageName: "chewy"),
         .init(id: 1, username: "Giannini Charles", message: "I do lots of Logic", imageName: "orc"),
         .init(id: 2, username: "Ivan Corchado Ruiz", message: "I crunch Apple code and Bella Bambinas", imageName: "apple"),
         .init(id: 3, username: "Nilson Nascimiento", message: "I code with mastery", imageName: "lavu"),
         .init(id: 4, username: "Giovanni Noa", message: "iOS Engineering in Prague", imageName: "invoicehome"),
         .init(id: 5, username: "Amerino", message: "Loving Swift and Apple Hardware", imageName: "apple"),
         .init(id: 6, username: "Jimmy Gutierrez", message: "I'm all about the UI", imageName: "orc"),
         .init(id: 7, username: "Davy Mbaku", message: "Silicon Valley Software Engineer", imageName: "comcast")
    ]
}
