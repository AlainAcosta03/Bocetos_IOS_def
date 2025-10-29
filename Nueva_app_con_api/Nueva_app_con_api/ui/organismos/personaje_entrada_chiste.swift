//
//  personaje_presentacion.swift
//  Nueva_app_con_api
//
//  Created by alumno on 10/29/25.
//
import SwiftUI

struct Personajechiste: View {
    var personaje: Personaje
    @Environment(DemonSlayerApp.self) var controlador
    
    var textoChiste: String {
        guard let chiste = controlador.chiste else {
            return "Cargando un chiste..."
        }
        
        if chiste.error {
            return "¡Ups! No se pudo cargar el chiste. Intenta de nuevo."
        }
        
        switch chiste.type {
        case "single":
            return chiste.joke ?? "Chiste no disponible (single)"
        case "twopart":
            let setup = chiste.setup ?? "Chiste no..."
            let delivery = chiste.delivery ?? "disponible"
            return "\(setup)\n— \(delivery)"
        default:
            return "Formato de chiste desconocido."
        }
    }
    
    var body: some View {
        
        Text("\(personaje.name) dice...")
            .font(.title2)
            .fontWeight(.semibold)
        
        Text(textoChiste)
            .padding()
            .background(Color.red.opacity(0.5))
            .cornerRadius(10)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        Button("¿Otro chiste?") {
            controlador.chiste = nil
            controlador.descargar_chiste()
        }
        .padding(.top, 5)
        .foregroundColor(.red)
    }
}


#Preview {
    Personajechiste(
        personaje: Personaje(id: 1, name: "404", age: 34, gender: "No", race: "Aria japonesa", description: "No encontrada", img: "https://m.gjcdn.net/fireside-post-image/900/27448073-jchmrsq7-v4.webp", affiliation_id: 1, arc_id: 1, quote: "Datos fabricados"))
        .environment(DemonSlayerApp())
}
