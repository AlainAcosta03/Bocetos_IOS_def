//
//  pantalla_personaje_detalles.swift
//  Nueva_app_con_api
//
//  Created by alumno on 10/27/25.
//

import SwiftUI

struct PersonajeDetalles: View {
    var personaje: Personaje
    @Environment(DemonSlayerApp.self) var controlador
    

    
    var body: some View {
        
        ScrollView {
            
            VStack {
                Personajepresentacion(personaje: personaje)
                
                PersonajeDescripcion(personaje: personaje)
                
                VStack(alignment: .leading) {
                    Personajechiste(personaje: personaje)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15)
                .padding(.horizontal)
            }
        }
        .navigationTitle(personaje.name)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
                controlador.descargar_chiste()

        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    PersonajeDetalles(
        personaje: Personaje(id: 1, name: "Tanjiro Kamado", age: 16, gender: "Hombre", race: "Humano", description: "Descripcion bien aca, bien 10/10", img: "https://m.gjcdn.net/fireside-post-image/900/27448073-jchmrsq7-v4.webp", affiliation_id: 1, arc_id: 1, quote: "No importa cuantas veces caiga, me levantaré."))
        .environment(DemonSlayerApp())
}
