//
//  Story.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 3/29/22.
//

import Foundation
import SwiftUI
import UIKit

struct Story: Identifiable {
    var id: UUID
    var image: UIImage
    var title: String
    var liveIndicator: Color
    
    static func getStory() -> Story {
        return Story(
            id: UUID(),
            image: UIImage(named: "1")!,
            title: "Tryout",
            liveIndicator: .blue
        )
    }
    
    static func getStoryies() -> [Story] {
        let emojis = "🥩🍗🍖🥓🍕🥔🥦🥒🥬🍆🌶🌽🍊🍇🥩🍗🍖🥓🍕🥔🥦🥒🥬🍆🌶🌽🍊🍇"
        let emojisArray = emojis.map { "\($0)" }
        return emojisArray.map {
            Story(
                id: UUID(),
                image: $0.toImage() ?? UIImage(),
                title: $0+$0+$0+$0,
                liveIndicator: .blue
            )
        }
    }
    
}

extension String {
    func toImage() -> UIImage? {
        if let data = Data(base64Encoded: self, options: .ignoreUnknownCharacters){
            return UIImage(data: data)
        }
        return nil
    }
}
