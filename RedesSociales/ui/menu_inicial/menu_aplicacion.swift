//
//  menu_aplicacion.swift
//  RedesSociales
//
//  Created by alumno on 3/31/25.
//

import SwiftUI

struct MenuNavegacion: View {
    @Environment(ControladorAplicacion.self) var controlador
    var body: some View {
        ZStack{
        TabView{
           
            
            GeneralPublicaciones()
                .tabItem { Label("esta es uan pantalla", systemImage: "Circlke") }
                .badge(controlador.publicaciones.count)
            
            Text("Hola dos")
                .tabItem {
                    Label{
                        Text("Dragon Ball AF")
                       
                    }
                icon: {
                    Circle()
                        .frame(width: 44, height: 44,
                               alignment: .center)
                        .overlay(Text("jj abrhans"))
                }
                }
            
            Text("Hola desdpe lptnalla 3")
                .tabItem 
            { Label("etiqueta de esta label", systemImage: "Circle") }
            /*
            Tab ("Etiqueta", )
            }
        */
            Spacer()
                    
        }
        }
    }
}

#Preview {
    MenuNavegacion()
        .environment(ControladorAplicacion())
}
