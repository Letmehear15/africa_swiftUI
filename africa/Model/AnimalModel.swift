//
//  AnimalModel.swift
//  africa
//
//  Created by Aleksandr Nesterov on 17.09.2024.
//

struct Animal: Identifiable, Codable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
