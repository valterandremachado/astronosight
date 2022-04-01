//
//  APIClient+FakeData.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation

class UserService: UserServiceProtocol {
    
    enum APIClientServiceError: Error {
        case failed
        case failedToEncode
        case invalidStatusCode
    }
    
    func fetchUserDetails() async throws -> [User] {
        let url = URL(string: "https://reqres.in/api/users?page=2")!
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
                  throw APIClientServiceError.invalidStatusCode
              }
        
        let decodedData = try JSONDecoder().decode(Users.self, from: data)
        return decodedData.data
    }
    
}
