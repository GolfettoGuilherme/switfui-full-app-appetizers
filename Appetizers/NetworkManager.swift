//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Guilherme Golfetto on 07/05/23.
//

import Foundation

final class NetworkManager {
    
    //-----------------------------------------------------------------------
    // MARK: - Singleton
    //-----------------------------------------------------------------------
    
    static let shared = NetworkManager()
    
    //-----------------------------------------------------------------------
    // MARK: - URLs
    //-----------------------------------------------------------------------

    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals"
    private let appetizerURL = baseURL + "/appetizers"
    
    //-----------------------------------------------------------------------
    // MARK: - Init
    //-----------------------------------------------------------------------
    
    private init() {}
    
    //-----------------------------------------------------------------------
    // MARK: - Requests
    //-----------------------------------------------------------------------
    
    func getAppetizers(
        completed: @escaping (Result<[Appetizer], ApError>) -> Void
    ) {
        
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse,response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerReponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
}
