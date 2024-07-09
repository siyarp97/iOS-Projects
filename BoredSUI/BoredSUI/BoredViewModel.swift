//
//  BoredViewModel.swift
//  BoredSUI
//
//  Created by Şiyar Palabıyık on 9.07.2024.
//

import Foundation

class BoredViewModel : ObservableObject{
    
    let url = "https://bored-api.appbrewery.com/random/"

    
    func getAdvice() async throws -> AdviceModel{
        guard let urlStr = URL(string: url) else {
            throw Errors.invalidUrl
        }
        
        let (data,response) = try await URLSession.shared.data(from: urlStr)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw Errors.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
             return try decoder.decode(AdviceModel.self, from: data)
        } catch{
            throw Errors.JSONParseError
        }
        
    }
}
    

enum Errors : Error {
    case invalidUrl
    case invalidResponse
    case JSONParseError
}
