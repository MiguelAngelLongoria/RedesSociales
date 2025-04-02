//
//  dragonball_api.swift
//  RedesSociales
//
//  Created by alumno on 4/2/25.
//

import SwiftUI

class DragonballAPI: Codable{
    let url_base = "https://dragonball-api.com/api"
    
    func descargar_pagina_personaje() async -> PaginaResultados? {
        let ubicacion_recurso = "/characters"
        
        return await descargar(recurso: ubicacion_recurso)
    }
    
    
    
    private func descargar<TipoGenerico: Codable>(recurso: String) async  -> TipoGenerico? {
        do {
            guard let url = URL(string: "\(url_base)\(recurso)") else { throw ErroresDeRed.badUrl }
            let (datos, respuesta) = try await URLSession.shared.data(from: url)
            guard let respuesta = respuesta as? HTTPURLResponse else { throw ErroresDeRed.badResponse }
            guard respuesta.statusCode >= 200 && respuesta.statusCode < 300  else { throw ErroresDeRed.badStatus }
            guard let respuesta_decodificada = try? JSONDecoder().decode(TipoGenerico.self, from: datos) else { throw ErroresDeRed.fallaAlConvertirLaRespuesta }
            
            return respuesta_decodificada
        }
        
        catch ErroresDeRed.badUrl {
            print("Tenes mal la url capo, cambiala")
        }
        catch ErroresDeRed.badResponse {
            print("Algo salio mal con la respuesta, revisa por favor")
        }
        catch ErroresDeRed.badStatus {
            print("Como consigues un status negativo de algo que ni siquiere se mueve.")
        }
        catch ErroresDeRed.fallaAlConvertirLaRespuesta {
            print("Tienes mal el modelo o la implementacion de este")
            print("En dragonball app")
        }
        
        catch ErroresDeRed.invalidRequest {
            print("Como llegaste aqui?")
        }
        catch {
            print("Algo terriblemente mal que no se que es, paso. No deberias de ver esto")
        }
        
        return nil
    }
}
