//
//  GetAllListOfEpisodesResponse.swift
//  RickAndMorty
//
//  Created by Tami on 21.05.2023.
//

import Foundation

struct GetAllListOfEpisodesResponse : Codable {
    struct Info: Codable{
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info : Info
    let results: [Episode]
}