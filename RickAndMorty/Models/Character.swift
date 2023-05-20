//
//  Character.swift
//  RickAndMorty
//
//  Created by Tami on 20.05.2023.
//

import Foundation

struct Character : Codable {
    let id : Int
    let name : String
    let status : characterStatus
    let species : String
    let type : String
    let gender : characterGender
    let origin : MyOrigin
    let location : Singlelocation
    let image : String
    let episode : [String] 
    let url : String
    let created : String
}




