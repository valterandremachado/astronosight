//
//  Event.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 3/30/22.
//

import Foundation

struct Event: Identifiable {
    var id: UUID
    var countDown: Int
    var eventKind: EventKind
    var eventName: String
}

struct EventKind {
    var meteor: String
    var moonPhase: String
    var eclipse: String
}
