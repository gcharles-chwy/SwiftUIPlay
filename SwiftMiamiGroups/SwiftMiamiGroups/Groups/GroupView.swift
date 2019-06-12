//
//  GroupView.swift
//  SwiftMiamiGroups
//
//  Created by Giannini ORC on 6/12/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import SwiftUI

struct GroupView: View {
    let theGroup: Group
    var body: some View {
        VStack (alignment: .center) {
            Image(theGroup.groupImageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 100, height: 100)
                .clipped()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            
            Text(theGroup.groupName).color(.primary)
            .lineLimit(nil).padding(.leading, 0)
            }.frame(width: 110, height: 170)
    }
}
