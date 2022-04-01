//
//  StoryHeader.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import SwiftUI


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

