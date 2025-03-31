//
//  Publicacion.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 24/03/25.
//

import SwiftUI

/*
 Codable
 Encodable
 Decodable
 
 */

struct Publicacion: Identifiable, Codable{
    let userId: Int
    let id: Int
    
    let title: String
    let body: String
    
}
