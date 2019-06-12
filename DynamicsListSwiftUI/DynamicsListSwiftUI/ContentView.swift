//
//  ContentView.swift
//  DynamicsListSwiftUI
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let users: [User] = UserData.shared.starterUsers
    
    var body: some View {
        NavigationView {
            List {
            Text("iOS Engineers").font(.largeTitle)
               ForEach(users.identified(by: \.id)) { user in
                UserRow(user: user)
                }
            }.navigationBarTitle(Text("Swift Miami"))
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
