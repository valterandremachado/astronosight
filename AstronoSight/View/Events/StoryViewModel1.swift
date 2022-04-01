//
//  FakeDataService.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation
import SwiftUI

@MainActor
class StoryViewModel: UserServiceProtocol {
    
    enum State {
        case na
        case loading
        case success(data: [User])
        case failed(error: Error)
    }
    

    @Published private(set) var state: State = .na
    private let service: APIClient
    
    init(service: APIClient = APIClient(baseUrl: "https://reqres.in")) {
        self.service = service
    }
    
}

// Methods
extension UserService {
    
    func getUserDetails() async {
        
        self.state = .loading
        do {
            let users = try await service.fetchUserDetails()
            self.state = .success(data: users)
        } catch {
            self.state = .failed(error: error)
        }
    }

}
