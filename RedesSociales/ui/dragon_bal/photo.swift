//
//  photo.swift
//  RedesSociales
//
//  Created by alumno on 4/30/25.
//
 /*
import SwiftUI
import PhotosUI // Para usar la galería

struct ContentView: View {
    
    @State private var foto_seleccionada: PhotosPickerItem? = nil
    @State private var foto_a_mostrar: UIImage? = nil
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $foto_seleccionada, matching: .images) {
                // Imagen por defecto si no hay imagen seleccionada
                Image(uiImage: foto_a_mostrar ?? UIImage(systemName: "person.circle.fill")!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100) // corregido: "with" por "width"
                    .clipShape(Circle())
            }
            .onChange(of: foto_seleccionada) { _, nueva_foto in
                Task {
                    if let nueva_foto,
                       let datos = try? await nueva_foto.loadTransferable(type: Data.self),
                       let imagen = UIImage(data: datos) {
                        foto_a_mostrar = imagen
                    }
                }
            }

            // Ejemplo de contenido adicional
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
/*
 */*/
