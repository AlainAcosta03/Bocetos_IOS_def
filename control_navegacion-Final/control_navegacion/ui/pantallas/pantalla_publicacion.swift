//
//  pantalla_publicacion.swift
//  control_navegacion
//
//  Created by alumno on 8/10/25.
//
import SwiftUI

struct PantallaPublicacion: View {
    
    @Environment(ControladorGeneral.self) var controlador
    
    var publicacion_actual: Publicacion
    
    private let mainBackgroundColor = Color(red: 0.05, green: 0.05, blue: 0.07)
    private let commentBackgroundColor = Color(red: 0.11, green: 0.11, blue: 0.12)
    private let accentColor = Color(red: 0.82, green: 0.35, blue: 0.12)
    
    var body: some View {
        ZStack {
            mainBackgroundColor
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(publicacion_actual.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        if let autor = controlador.obtener_usuario(para: publicacion_actual.userId) {
                            NavigationLink(destination: PantallaPerfil(usuario: autor)) {
                                HStack(spacing: 4) {
                                    Text("Por:")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                    
                                    Text(autor.name)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(accentColor)
                                }
                            }
                        } else {
                            Text("Por: Usuario Desconocido")
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.bottom, 10)
                    
                    Divider()
                        .overlay(Color.gray.opacity(0.5))
                    
                    Text(publicacion_actual.body)
                        .font(.body)
                        .lineSpacing(4)
                        .foregroundColor(.white)
                    
                    Divider()
                        .overlay(Color.gray.opacity(0.5))
                    
                    Text("Comentarios (\(controlador.comentarios.count))")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    VStack(alignment: .leading, spacing: 15) {
                        if controlador.comentarios.isEmpty {
                            Text("Cargando comentarios...")
                                .foregroundColor(.gray)
                        } else {
                            ForEach(controlador.comentarios) { comentario in
                                VStack(alignment: .leading, spacing: 5) {
                                    Text(comentario.email)
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(accentColor)
                                    Text(comentario.body)
                                        .font(.caption)
                                        .foregroundColor(.white)
                                }
                                .padding(10)
                                .frame(maxWidth: 330, alignment: .leading)
                                .background(commentBackgroundColor)
                                .cornerRadius(8)
                            }
                        }
                    }
                }
                .padding()
                .onAppear {
                    controlador.publicacion_seleccionada(publicacion_actual.id)
                }
            }
        }
    }
}

// MARK: - Preview
#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "Titulo", body: "Descripcion de la noticia."))
        .environment(ControladorGeneral())
        .preferredColorScheme(.dark)
}
