//
//  RMEpisode.swift
//  RickAndMorthy
//
//  Created by MacBook Air MII  on 28/05/24.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate
        case episode, characters, url, created
    }
}
