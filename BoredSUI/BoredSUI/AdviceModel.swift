//
//  AdviceModel.swift
//  BoredSUI
//
//  Created by Şiyar Palabıyık on 9.07.2024.
//

import Foundation

struct AdviceModel : Codable {
    let activity: String
    let availability: Double
    let type: String
    let participants: Int
    let price: Double
    let accessibility, duration: String
    let kidFriendly: Bool
    let link: String
    let key: String
}
