//
//  UserRow.swift
//  DynamicsListSwiftUI
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    let user: User
    var body: some View {
        HStack {
            Image(user.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .clipped()
                .clipShape(Circle())
                .padding(.init(top:0, leading: 0, bottom: 0, trailing: 0))
            VStack (alignment: .leading) {
                Text(user.username).font(.headline)
                Text(user.message).font(.subheadline).lineLimit(nil)
                
            }.padding(.init(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
    }
}
