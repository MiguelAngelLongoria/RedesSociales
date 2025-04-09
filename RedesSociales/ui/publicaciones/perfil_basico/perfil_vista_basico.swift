//
//  perfil_vista_basica.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 28/03/25.
//
import SwiftUI


struct PerfilBasicoVista: View {
    @Environment(ControladorAplicacion.self) var controlador
    
    
    var body: some View {
        Text("User: \(controlador.perfil_a_mostar?.username ?? "Peude que no ")")
        Text("Nombre: \(controlador.perfil_a_mostar?.name ?? "sea bonito ver estas")")
        Text("Correo: \(controlador.perfil_a_mostar?.email ?? "palabras de error")")
            .onDisappear(){
                print("Adios mundo cruel, este mensaje solo se ve cuando destruimos la vista")
            }
    }
}


#Preview{
    PerfilBasicoVista()
        .environment(ControladorAplicacion())
}
