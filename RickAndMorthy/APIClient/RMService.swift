//
//  RMService.swift
//  RickAndMorthy
//
//  Created by MacBook Air MII  on 28/05/24.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() { }
    
    public func execute <T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping () -> Void
    ) { }
}
