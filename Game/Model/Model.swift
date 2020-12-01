//
//  Model.swift
//  Game
//
//  Created by Yazid Al Ghazali on 27/11/20.
//

import Foundation

struct Games: Codable {
    let results: [Game]

    enum CodingKeys: String, CodingKey {
        case results
    }
}

struct Game: Codable, Identifiable {
    let id: Int
    let name, released: String
    let backgroundImage: String
    let rating: Double

    enum CodingKeys: String, CodingKey {
        case id, name, released
        case backgroundImage = "background_image"
        case rating
    }
}
