//
//  tarjeta_presentacion_personaje.swift
//  Nueva_app_con_api
//
//  Created by alumno on 10/27/25.
//
import SwiftUI


struct TarjetaPersonaje: View {
    var personaje: Personaje
    
    var body: some View {
        AsyncImage(url: URL(string: personaje.img)){ estado in
            switch(estado){
            case .empty:
                Text("Estamos descargando fotos")
            case .success(let imagen):
                imagen
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                    .background(Color.white)
            case .failure(_):
                Text("Parece que no tienes internet")
            @unknown default:
                Text("Esto es extraño, como lo hiciste?")
            }
        }
        Text("Hola mi nombre es \(personaje.name)")
            .padding(.all, 2.0)
            
    }
}

#Preview {
    TarjetaPersonaje(
        personaje: Personaje(id: 1, name: "404", age: 34, gender: "No", race: "Aria japonesa", description: "No encontrada", img: "https://m.gjcdn.net/fireside-post-image/900/27448073-jchmrsq7-v4.webp", affiliation_id: 1, arc_id: 1, quote: "Datos fabricados")
    )
}
