//
//  comentario.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 26/03/25.
//
import SwiftUI


struct Comentario: Identifiable, Codable{
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
