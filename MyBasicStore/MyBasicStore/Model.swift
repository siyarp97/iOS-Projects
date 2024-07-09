//
//  Model.swift
//  MyBasicStore
//
//  Created by Şiyar Palabıyık on 7.07.2024.
//

import Foundation



struct ProductModel: Codable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: Category
    let image: String
    let rating: Rating
}

enum Category: String, Codable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}

