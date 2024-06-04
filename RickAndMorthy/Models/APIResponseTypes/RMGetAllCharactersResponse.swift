//
//  RMGetAllCharactersResponse.swift
//  RickAndMorthy
//
//  Created by MacBook Air MII  on 04/06/24.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: Info
    let results: [RMCharacter]
}

struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
