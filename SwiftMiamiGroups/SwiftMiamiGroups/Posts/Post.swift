//
//  Post.swift
//  SwiftMiamiGroups
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let username, text, userImageName: String, postImageName: String
}
