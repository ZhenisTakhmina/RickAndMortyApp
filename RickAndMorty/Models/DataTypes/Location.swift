//
//  Location.swift
//  RickAndMorty
//
//  Created by Tami on 20.05.2023.
//

import Foundation

struct Location : Codable {
    let id : Int
    let name : String
    let type : String
    let dimension : String
    let residents : [String]
    let url : String
    let created : String
}

