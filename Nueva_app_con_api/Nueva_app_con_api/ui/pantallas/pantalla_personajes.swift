//
//  pantalla_personajes.swift
//  Nueva_app_con_api
//
//  Created by alumno on 10/24/25.
//

import SwiftUI

struct PantallaPersonajes: View{
    @Environment(DemonSlayerApp.self) var controlador
    
    var body: some View{
        
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing: 0){
                    
                    ForEach(controlador.personajes){ personaje in
                        
                        NavigationLink{
                            PersonajeDetalles(personaje: personaje)
                        }
                        label:{
                            TarjetaPersonaje(personaje: personaje)
                                .frame(maxWidth: .infinity)
                            
                        }
                        .buttonStyle(.plain)
                        .background(Color.red.opacity(0.5))
                        .cornerRadius(15)
                        .padding(.horizontal,10)
                        .padding(.vertical,10)
                        
                    }
                }
            }.navigationTitle("Demon slayer")
            
            Spacer()
            
            Text("Siguiente pagina")
                .onTapGesture {
                    controlador.siguiente_pagina()
                }.preferredColorScheme(.dark)
        }
    }
}

#Preview {
    PantallaPersonajes()
        .environment(DemonSlayerApp())
}
