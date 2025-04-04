//
//  PantallaPersonajes.swift
//  RedesSociales
//
//  Created by alumno on 4/4/25.
//

import SwiftUI

struct PantallaPersonajes: View {
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View{
        
        if(controlador.pagina_resultados != nil){
            ScrollView{
                
                LazyVStack{
                    ForEach(controlador.pagina_resultados!.items ){ personaje in Text("el personaje es \(personaje.name)")
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
                    }
                }
            }
        }
    }
}


#Preview {
    PantallaPersonajes()
        .environment(ControladorAplicacion())
}



/*
 
https://asynclearn.com/blog/como-usar-async-image-en-swiftui/
 
 
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
*/
