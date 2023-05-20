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
    static let shared = Request()
//    privatizied constructor
    private init() {}
    
    /// API Callback
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute (_ request: Request, completion: @escaping() -> Void){
        
    }
}
