//
//  PostView.swift
//  SwiftMiamiGroups
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

struct PostView: View {
    let post: Post
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(post.userImageName)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipped()
                    .clipShape(Circle())
                VStack (alignment: .leading, spacing: 4) {
                    Text(post.username).font(.headline)
                    Text("Posted 8 hrs ago").font(.subheadline)
                    }.padding(.leading, 0)
                }.padding(.leading, 16).padding(.top, 16)
            
            Text(post.text).lineLimit(nil).padding(.leading, 16).padding(.trailing, 32)
            Image(post.postImageName)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
            }.padding(.init(top:0, leading: -20, bottom: 15, trailing: -20))
    }
}


