//
//  FakeDataServiceProtocol.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation

@MainActor
protocol StoryViewModelProtocol: ObservableObject {
    var users: [User] { get }
    func getUserDetails() async
}
