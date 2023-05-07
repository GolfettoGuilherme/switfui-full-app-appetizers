//
//  Appertizer.swift
//  Appetizers
//
//  Created by Guilherme Golfetto on 07/05/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerReponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppertizer = Appetizer(
        id: 1,
        name: "Pizza",
        description: "Standar Pizza",
        price: 29.95,
        imageURL: "",
        calories: 99,
        protein: 14,
        carbs: 10
    )
    
    static let appetizers = [sampleAppertizer, sampleAppertizer, sampleAppertizer, sampleAppertizer]
    
}
