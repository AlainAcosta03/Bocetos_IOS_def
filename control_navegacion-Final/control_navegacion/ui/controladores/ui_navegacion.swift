//
//  ui_navegacion.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

enum Pestañas{
    case Configuracion
    case Galeria
    case Noticias
    case Inicio
}

struct NavegacionPrincipal: View {
    private let tabBackgroundColor = Color(red: 0.11, green: 0.11, blue: 0.12)
    
    @State var pestaña_actual: Pestañas = .Inicio
    
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View{
        TabView(selection: $pestaña_actual){
            
            Tab("Inicio", systemImage: "play", value: .Inicio){
                NavigationStack {
                    PantallaInicio()
                }
            }
            .badge("NOVEDAD")
            
            Tab("Noticias", systemImage: "newspaper", value: .Inicio){
                NavigationStack {
                    PantallaNoticias()
                }
            }
            .badge(noticias.count)
            
            Tab("Galeria", systemImage: "photo.artframe", value: .Inicio){
                NavigationStack {
                    PantallaGaleria()
                }
            }
            
            Tab("Configuracion", systemImage: "gear", value: .Inicio){
                NavigationStack {
                    PantallaConfiguracion()
                }
            }
        }
            .tint(Color(red: 0.82, green: 0.35, blue: 0.12))
            .preferredColorScheme(.dark)
            .toolbarBackground(tabBackgroundColor, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
    }
}

#Preview {
    let controlador = ControladorGeneral()
    
    NavegacionPrincipal()
        .environment(controlador)
}
