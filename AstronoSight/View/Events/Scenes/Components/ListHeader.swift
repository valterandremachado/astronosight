//
//  StoryHeader.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import SwiftUI


struct StoryHeader: View {
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.body.smallCaps())
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 70, height: 25, alignment: .center)
        .background(.red)
        .cornerRadius(6)
    }
}

//struct StoryHeader: View {
//    let name: String
//    let color: Color
//
//    var body: some View {
//        VStack {
//            Spacer()
//            HStack {
//                Text(name)
//                Spacer()
//            }
//            Spacer()
//        }
//        .padding(0).background(FillAll(color: color))
//    }
//}

struct FillAll: View {
    let color: Color
    
    var body: some View {
        GeometryReader { proxy in
            self.color.frame(width: proxy.size.width * 1.3).fixedSize()
        }
    }
}
