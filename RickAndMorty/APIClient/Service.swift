//
//  Service.swift
//  RickAndMorty
//
//  Created by Tami on 20.05.2023.
//

import Foundation

//Primary API service object to get Rick and Morty data
final class Service  {
//    shared singleton instance
    static let shared = Service()
//    privatizied constructor
    private init() {}
    
    /// API Callback
    /// - Parameters:
    ///   - request: Request instance
    ///   - T: the type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: Request,
        expecting type: T.Type,
        completion: @escaping(Result<T,Error>) -> Void){
        
    }
}
