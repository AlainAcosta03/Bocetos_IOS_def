//
//  pantalla_noticias.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct PantallaNoticias: View {
    @Environment(ControladorGeneral.self) var controlador
    
    private let mainBackgroundColor = Color(red: 0.05, green: 0.05, blue: 0.07)
    
    var body: some View {
        ZStack {
            mainBackgroundColor
                .ignoresSafeArea()
            
            if(controlador.publicaciones.isEmpty){
                Text("Estamos descargando los datos, por favor espera.")
                    .foregroundColor(.white)
            }
            else{
                NavigationStack{
                    ScrollView{
                        LazyVStack{
                            ForEach(controlador.publicaciones) { publicacion in
                                
                                NavigationLink{
                                    PantallaPublicacion(publicacion_actual: publicacion)
                                } label: {
                                    Encabezado(publicacion: publicacion)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PantallaNoticias()
        .environment(ControladorGeneral())
        .preferredColorScheme(.dark)
}
