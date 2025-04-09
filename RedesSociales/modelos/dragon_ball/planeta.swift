//
//  planeta.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 02/04/25.
//

struct Planeta: Identifiable, Codable{
    let id: Int
    let name: String
    let isDestroyed: Bool
    let description: String
    let image: String
}
