//
//  personaje_presentacion.swift
//  Nueva_app_con_api
//
//  Created by alumno on 10/29/25.
//
import SwiftUI

struct Personajepresentacion: View {
    @Environment(DemonSlayerApp.self) var controlador
    
    var personaje: Personaje
    
    var body: some View {
        
        Text(personaje.name)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.red)
        
        AsyncImage(url: URL(string: personaje.img)) { estado in
            switch estado {
            case .empty:
                ProgressView("Estamos descargando fotos")
            case .success(let imagen):
                imagen
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(radius: 5)
            case .failure(_):
                Image(systemName: "photo.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .foregroundColor(.gray)
                    .background(Color.secondary.opacity(0.1))
            @unknown default:
                Text("Error de imagen desconocido")
            }
        }
        .padding(.horizontal)
    }
}


#Preview {
    Personajepresentacion(
        personaje: Personaje(id: 1, name: "404", age: 34, gender: "No", race: "Aria japonesa", description: "No encontrada", img: "https://m.gjcdn.net/fireside-post-image/900/27448073-jchmrsq7-v4.webp", affiliation_id: 1, arc_id: 1, quote: "Datos fabricados"))
        .environment(DemonSlayerApp())
}
