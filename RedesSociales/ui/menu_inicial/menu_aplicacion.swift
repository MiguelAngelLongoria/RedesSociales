//
//  menu_apliacion.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 31/03/25.
//
import SwiftUI


//https://stackoverflow.com/questions/69309689/ios-15-swiftui-tabview-tab-bar-appearance-doesnt-update-between-views

// https://developer.apple.com/documentation/swiftui/label


struct MenuNavegacion: View {
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View {
        TabView{
            
            GeneralPublicaciones()
                .tabItem{Label("Es esta pantalla \n otra parte", systemImage: "circle")}
                .badge(controlador.publicaciones.count)
            
            PantallaPersonajes()
                .tabItem{
                    Label{
                        VStack{
                            Text("Dragon Ball DB")
                        }
                        
    
                    } icon: {
                        Circle()
                            //.fill(person.profileColor)
                            .frame(width: 44, height: 44, alignment: .center)
                            .overlay(Text("JJ Abarhams"))
                    }
                }
            
            Text("HOla desde pantalla 3")
                .tabItem{ Label("Etiqeuta de esta label", systemImage: "circle") }
            
            /*
            Tab("Etiqueta", systemImage: "Perfil"){
                Text("Referencia a la pantalla")
            }
             */
        }
    }
}

#Preview {
    MenuNavegacion()
        .environment(ControladorAplicacion())
}
