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
    
    enum ServiceError : Error {
        case failedToCreateRequest
        case failedToGetData
    }
    /// API Callback
    /// - Parameters:
    ///   - request: Request instance
    ///   - T: the type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T:Codable>(
        request: Request,
        expecting type: T.Type,
        completion: @escaping(Result<T,Error>) -> Void)
    {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(ServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, __, error in
            guard let data = data, error == nil else{
                completion(.failure(error ?? ServiceError.failedToGetData))
                return 
            }
        
            //decode response
            do{
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            } catch{
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    
    private func request(from RMrequest: Request) -> URLRequest? {
        guard let url = RMrequest.url else {return nil}
        var request = URLRequest(url:url)
        request.httpMethod = RMrequest.httpMethod
        
        return request
    }
}

extension Request {
    static let listCharactersRequests = Request(endpoint: .character)
    static let listLocationsRequests = Request(endpoint: .location)
    static let listEpisodesRequests = Request(endpoint: .episode)
}
