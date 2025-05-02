import SwiftUI

struct VistaPersonaje: View {
    @Environment(ControladorAplicacion.self) var controlador

    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                
                // Nombre del personaje
                Text(controlador.personaje_seleccionado?.name ?? "Sin nombre")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.orange)
                    .padding(.top)

                // Imagen del personaje (más grande y con marco)
                AsyncImage(url: URL(string: controlador.personaje_seleccionado?.image ?? "")) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 350)
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4))
                    case .failure(_):
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.gray)
                    default:
                        ProgressView()
                    }
                }

                // Datos del personaje
                VStack(alignment: .leading, spacing: 10) {
                    Text("Raza: \(controlador.personaje_seleccionado?.race ?? "Desconocida")")
                    Text("Género: \(controlador.personaje_seleccionado?.gender ?? "Desconocido")")
                    Text("Afiliación: \(controlador.personaje_seleccionado?.affiliation ?? "Ninguna")")
                    Text("Ki: \(controlador.personaje_seleccionado?.ki ?? "0")")
                    Text("Ki máximo: \(controlador.personaje_seleccionado?.maxKi ?? "0")")
                }
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.green, lineWidth: 2))

                // Descripción del personaje
                Text(controlador.personaje_seleccionado?.description ?? "Sin descripción disponible.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.orange.opacity(0.2))
                    .cornerRadius(15)

                // Planeta de origen
                if let planeta = controlador.personaje_seleccionado?.originPlanet {
                    VStack(spacing: 10) {
                        Text("🌍 Planeta de origen")
                            .font(.title3)
                            .foregroundColor(.green)
                        
                        AsyncImage(url: URL(string: planeta.image)) { phase in
                            switch phase {
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 250)
                                    .cornerRadius(12)
                                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.green, lineWidth: 3))
                            case .failure(_):
                                Image(systemName: "globe")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.gray)
                            default:
                                ProgressView()
                            }
                        }

                        Text(planeta.name)
                            .font(.headline)
                        Text(planeta.description)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                        
                        Text("Destruido: \(planeta.isDestroyed ? "Sí" : "No")")
                            .fontWeight(.bold)
                            .foregroundColor(planeta.isDestroyed ? .red : .green)
                    }
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(15)
                }

                // Transformaciones
                if let transformaciones = controlador.personaje_seleccionado?.transformations, !transformaciones.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("🔥 Transformaciones")
                            .font(.title3)
                            .foregroundColor(.orange)

                        ForEach(transformaciones) { transformacion in
                            VStack(spacing: 10) {
                                AsyncImage(url: URL(string: transformacion.image)) { phase in
                                    switch phase {
                                    case .success(let image):
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 220)
                                            .cornerRadius(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 2))
                                    case .failure(_):
                                        Image(systemName: "bolt")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .foregroundColor(.gray)
                                    default:
                                        ProgressView()
                                    }
                                }

                                Text(transformacion.name)
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                
                                Text("Ki: \(transformacion.ki)")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.orange.opacity(0.15))
                            .cornerRadius(12)
                        }
                    }
                }

            }
            .padding()
        }
        .background(Color.green.opacity(0.1))
    }
}

#Preview {
    VistaPersonaje()
        .environment(ControladorAplicacion())
}
