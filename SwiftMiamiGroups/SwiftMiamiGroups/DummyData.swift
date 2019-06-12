//
//  Data.swift
//  SwiftMiamiGroups
//
//  Created by Giannini ORC on 6/12/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI


class DummyData {
    static let shared = DummyData()
    
    let posts: [Post] = [
        .init(id: 0, username: "Giannini Charles", text: "Here to do awesome things", userImageName: "orc", postImageName: "turtle"),
        .init(id: 1, username: "Austina Deltran", text: "Learning this amazing SwiftUI", userImageName: "google", postImageName: "turtle")
    ]
    
    let groups: [Group] = [
        .init(id: 0, groupName: "Swift Miami", groupImageName: "swiftmiami"),
        .init(id: 1, groupName: "Googlers", groupImageName: "google"),
        .init(id: 2, groupName: "Apples", groupImageName: "apple"),
        .init(id: 3, groupName: "Reef Ppl", groupImageName: "orc"),
    ]
}
