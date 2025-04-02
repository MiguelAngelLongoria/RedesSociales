//
//  personaje.swift
//  RedesSociales
//
//  Created by alumno on 4/2/25.
//

struct MonoChino : Identifiable, Codable{
    
    let id: Int
    let name: String
    let ki: String
    let maxKi: Int
    let race: String
    let gender: String
    let description: String
    let image: String
    let affiliation: String
    
    let originPlanet: Planeta
    
    //let transformations: Array<Transformacion>
    let transformation: [Transformacion]
}
