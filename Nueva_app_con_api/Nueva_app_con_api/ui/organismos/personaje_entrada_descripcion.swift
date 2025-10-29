//
//  personaje_presentacion.swift
//  Nueva_app_con_api
//
//  Created by alumno on 10/29/25.
//
import SwiftUI

struct PersonajeDescripcion: View {
    @Environment(DemonSlayerApp.self) var controlador
    
    var personaje: Personaje
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Divider()
            Text("**Raza:** \(personaje.race)")
            Text("**Edad:** \(personaje.age != nil ? String(personaje.age!) : "Desconocida")")
            Text("**Género:** \(personaje.gender)")
            Text("**Cita:** *\"\(personaje.quote)\"*")
                .italic()
                .padding(.top, 5)
            Divider()
            Text("**Descripción:**")
                .font(.headline)
            Text(personaje.description)
                .multilineTextAlignment(.leading)
        }
        .padding(.horizontal)
    }
}


#Preview {
    PersonajeDescripcion(
        personaje: Personaje(id: 1, name: "404", age: 34, gender: "No", race: "Aria japonesa", description: "No encontrada", img: "https://m.gjcdn.net/fireside-post-image/900/27448073-jchmrsq7-v4.webp", affiliation_id: 1, arc_id: 1, quote: "Datos fabricados"))
        .environment(DemonSlayerApp())
}
