//
//  RMLocation.swift
//  RickAndMorthy
//
//  Created by MacBook Air MII  on 28/05/24.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
