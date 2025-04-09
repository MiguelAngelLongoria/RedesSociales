//
//  PantallaPersonajes.swift
//  RedesSociales
//
//  Created by alumno on 4/4/25.
//
 
import SwiftUI
 
struct PantallaPersonajes: View {
    @Environment(ControladorAplicacion.self) var controlador
 
    var body: some View {
        NavigationStack {
            if let resultados = controlador.pagina_resultados {
                ScrollView {
                    VStack(spacing: 16) {
                        //ForEach(resultados.items) { personaje in
                        ForEach(controlador.pagina_resultados!.items)
                        { personaje in
                            NavigationLink {
                                /*Aquí debo colocar los detalles del personaje
                             
                                 */
                                Text("Vista de detalle para \(personaje.name)")
                                    
                                
                                
                            } label: {
                                HStack(spacing: 16) {
                                    AsyncImage(url: URL(string: personaje.image)) { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                            .clipShape(Circle())
                                    } placeholder: {
                                        ProgressView()
                                            .padding()
                                            .frame(width: 100, height: 100)
                                            .background(Color.gray.opacity(0.7))
                                            .clipShape(Circle())
                                    }
 
                                    Text(personaje.name)
                                        .font(.headline)
                                        .foregroundColor(.primary)
                                }
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            }
                            
                        }
                    }
                    .padding()
                }
            } 
            
            /*else {
                Text("Cargando personajes...")
                    .padding()
            }
             */
        }
    }
}
 
#Preview {
    PantallaPersonajes()
        .environment(ControladorAplicacion())
}
 
