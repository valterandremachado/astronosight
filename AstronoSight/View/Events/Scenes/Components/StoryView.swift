//
//  StoryCell.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import SwiftUI



struct StoryView: View {
//    var stories: [Story]
    let users: [User]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: -16) {
                ForEach(users, id: \.id) { user in
                    StoryCell(user: user)
                        .padding(.all, 15)
                }
            }
        }
    }
}

struct StoryCell: View {
//    let story: Story
    let user: User

    var body:some View {
        VStack {
            ZStack{
                CustomAsyncImage(
                   url: URL(string: user.avatar)!,
                   placeholder: {
                     Image("1").frame(width: 40)
                   },
                   image: {
                       $0
                           .frame(width: 85, height: 85)
                           .scaledToFit()
                           .clipShape(Circle())
                   }
                 )
                Circle()
                    .stroke(Color.green, lineWidth: 2.5)
            }
            Text(user.first_name)
        }

    }
}
