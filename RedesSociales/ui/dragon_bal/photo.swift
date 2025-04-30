//
//  photo.swift
//  RedesSociales
//
//  Created by alumno on 4/30/25.
//
 /*
import SwiftUI
// para usar la galeria
import PhotosUI

struct ContentView: View {

    @State var foto_seleccionada: PhotosPickerItem? = nil

    @State var foto_a_mostrar: UIImage? = nil
    
    var body: some View {
        PhotosPicker(selection: $foto_seleccionada){
            Image(uiImage: foto_a_mostrar ?? UIImage(resource: .))//donde dice avater es el nombre que s epoe caudo subir foto
                .resizable()
                .aspectRatio(contentMode: . fill)
                .frame(with: 100, height: 100)
                .clipShape(.circle)
        }
        .onChange(of: foto_seleccionada) {valor_anterior, valor_nuevo in
            Task{
                if let foto_seleccionada, let datos = try? await
                    foto_seleccionada.loadTransferable(type: Data.self){
                    foto_a_mostrar = imagen
                }
            }
        }
        
        
    }
    VStack {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
        Text("Hello, world")

    }

    .padding()

}

}


#Preview {

ContentView() // Cambié "photo()" a "ContentView()"

}
*/

///////////////////////////////////////////////
///
///
///
 /*
  //

  //  photo.swift

  //  RedesSociales

  //

  //  Created by alumno on 4/30/25.

  //


  import SwiftUI

  // para usar la galería

  import PhotosUI


  struct ContentView: View {

      @State var foto_seleccionada: PhotosPickerItem? = nil

      @State var foto_a_mostrar: UIImage? = nil

      

      var body: some View {

          VStack {

              PhotosPicker(selection: $foto_seleccionada) {

                  Image(uiImage: foto_a_mostrar ?? UIImage(systemName: "person.crop.circle")!) // Cambia "person.crop.circle" por el nombre que desees

                      .resizable()

                      .aspectRatio(contentMode: .fill)

                      .frame(width: 100, height: 100)

                      .clipShape(Circle())

              }

              .onChange(of: foto_seleccionada) { valor_nuevo in

                  Task {

                      if let foto_seleccionada = valor_nuevo, let datos = try? await foto_seleccionada.loadTransferable(type: Data.self) {

                          if let imagen = UIImage(data: datos) {

                              foto_a_mostrar = imagen

                          }

                      }

                  }

              }

              

              Image(systemName: "globe")

                  .imageScale(.large)

                  .foregroundStyle(.tint)

              Text("Hello, world")

          }

          .padding()

      }

  }


  #Preview {

      ContentView() // Cambié "photo()" a "ContentView()"

  }
  */
