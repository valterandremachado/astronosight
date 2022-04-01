//
//  APIClient.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation


class APIClient: APIClientProtocol {
    
    private(set) var baseUrl: String
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    enum ResourcePath {
        case path
        
        var url: String {
            switch self {
            case .path:
                return "/api/users?page=2"
            }
        }
    }
}

