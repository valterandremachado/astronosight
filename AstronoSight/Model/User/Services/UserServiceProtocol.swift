//
//  FakeAPI.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation

protocol UserServiceProtocol {
    func fetchUserDetails () async throws -> [User]
}
