//
//  errores.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 24/03/25.
//

enum ErroresDeRed: Error{
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case fallaAlConvertirLaRespuesta
}
