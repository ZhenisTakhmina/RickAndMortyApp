//
//  Episodes.swift
//  RickAndMorty
//
//  Created by Tami on 20.05.2023.
//

import Foundation

struct Episode : Codable {
    let id: Int
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}

