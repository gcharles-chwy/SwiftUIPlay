//
//  ContentView.swift
//  SwiftMiamiGroups
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

struct GroupDetailView: View {
    var body: some View {
        Text("Welcome to Detail")
    }
}

struct ContentView : View {
    let posts: [Post] = DummyData.shared.posts
    let groups: [Group] = DummyData.shared.groups
    
    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .leading) {
                    Text("Trending")
                    ScrollView {
                        VStack (alignment: .leading) {
                            HStack {
                                ForEach(groups.identified(by: \.id)) { group in
                                    NavigationButton(destination: GroupDetailView()) {
                                   GroupView(theGroup: group)
                                    }
                                }
                            }
                        }
                        }.frame(height: 200)
                }
               
                ForEach(posts.identified(by: \.id)) { post in
                    PostView(post: post)
                }
        }.navigationBarTitle(Text("Groups"))
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
