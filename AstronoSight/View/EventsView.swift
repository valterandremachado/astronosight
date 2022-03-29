//
//  EventsView.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 3/21/22.
//

import SwiftUI

struct EventsView: View {
    let model = Story.getStoryies()
    
    var body: some View {
        List {
            Section(header: StoryHeader()) {
            }
            
            Section(header: Text("Upcoming Events")) {
                ForEach(model) { story in
                    Text(story.title)
                }
            }
            
        }
        .listStyle(GroupedListStyle())
    }
}

struct StoryHeader: View {
    var body: some View {
        VStack {
            Text("Today")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 70, height: 25, alignment: .center)
        .background(.red)
        .cornerRadius(6)
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
