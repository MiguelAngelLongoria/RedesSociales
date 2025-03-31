//
//  perfil.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 28/03/25.
//

struct Perfil: Codable, Identifiable{
    let id: Int
    
    let name: String
    let username: String
    
    let email: String
    let phone: String
}
