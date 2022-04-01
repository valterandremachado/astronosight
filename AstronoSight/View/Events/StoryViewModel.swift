//
//  FakeDataService.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation
import SwiftUI


class StoryViewModel: StoryViewModelProtocol {
    
    enum State {
        case na
        case loading
        case success(data: [User])
        case failed(error: Error)
    }
    

    @Published private(set) var state: State = .na
    
    @Published private(set) var users: [User] = []

    private let service: UserService
    
    init(service: UserService) {
        self.service = service
    }
    
}

// MARK: - Methods
extension StoryViewModel {
    
    func getUserDetails() async {
        
        self.state = .loading
        do {
            let users = try await service.fetchUserDetails()
            self.state = .success(data: users)
            self.users = users
        } catch {
            self.state = .failed(error: error)
        }
    }

}
