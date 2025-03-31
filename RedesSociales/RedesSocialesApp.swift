//
//  RedesSocialesApp.swift
//  RedesSociales
//
//  Created by alumno on 3/26/25.
//

import SwiftUI

@main
@MainActor
struct RedesSocialesApp: App {
    @State var controlador = ControladorAplicacion()
    
    var body: some Scene {
        WindowGroup {
            GeneralPublicaciones()
                .environment(controlador)
        }
    }
}
