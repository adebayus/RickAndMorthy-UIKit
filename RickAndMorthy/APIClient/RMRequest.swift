//
//  RMRequest.swift
//  RickAndMorthy
//
//  Created by MacBook Air MII  on 28/05/24.
//

import Foundation

final class RMRequest {
     
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com.api"
    }
    
    private let endpoint: RMEndpoint
    
    private let pathComponents: Set<String>
    
    private let queryParamaters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParamaters.isEmpty{
            string += "?"
            let argumentString = queryParamaters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
        }
        
        return string
    }
    
    public var url: URL? {
        return nil
    }
    
    public let httpMethod = "GET"
    
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParamaters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParamaters = queryParamaters
    }
    
}
