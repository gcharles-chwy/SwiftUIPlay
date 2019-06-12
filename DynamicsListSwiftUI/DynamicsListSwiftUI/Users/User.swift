//
//  User.swift
//  DynamicsListSwiftUI
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    let username, message: String, imageName: String

    func isUserValid() -> Bool {
        return username.isEmpty == false && message.isEmpty == false && UIImage(named: imageName) != nil 
    }
    
    func typeCheck() -> Bool {
        if type(of: self.id) != Int.self
            || type(of: self.message) != String.self
            || type(of: self.imageName) != String.self {
            return false
        }
        return true
    }
}
