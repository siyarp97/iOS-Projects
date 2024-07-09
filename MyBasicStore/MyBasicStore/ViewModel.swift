//
//  ViewModel.swift
//  MyBasicStore
//
//  Created by Şiyar Palabıyık on 7.07.2024.
//

import Foundation

class ViewModel {
    
    let url = "https://fakestoreapi.com/products"
    
    func getData() async throws -> [ProductModel]{
        
        guard let wrapUrl = URL(string: url) else {
            throw Errors.invalidUrl
        }
        
        let (data,response) = try await URLSession.shared.data(from: wrapUrl)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw Errors.invalidData
        }
        
        do {
            let response = try JSONDecoder().decode([ProductModel].self, from: data)
            return response
        } catch {
            throw Errors.invalidParse
        }
        
    }
}
enum Errors : Error {
    case invalidUrl
    case invalidData
    case invalidParse
}
