//
//  FakeAPI.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation

struct Users: Codable {
    let data: [User]
}

struct User: Codable {
    let id: Int
    let email: String
    let first_name: String
    let last_name: String
    let avatar: String
}
