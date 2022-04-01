//
//  APIClientProtocol.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 4/1/22.
//

import Foundation



protocol APIClientProtocol {
    var baseUrl: String { get }
}

extension APIClientProtocol {
    func endPointUrl(path: APIClient.ResourcePath) -> String {
        return baseUrl + path.url
    }
}
