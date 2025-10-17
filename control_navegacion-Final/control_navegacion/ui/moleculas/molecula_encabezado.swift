//
//  molecula_encabezado.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//
import SwiftUI


struct Encabezado: View {
    private let cardBackgroundColor = Color(red: 0.11, green: 0.11, blue: 0.12)
    private let accentColor = Color(red: 0.82, green: 0.35, blue: 0.12)
    
    var publicacion: Publicacion = Publicacion(
        userId: 1, id: 1, title: "Título de Publicación de Ejemplo", body: "Este es el cuerpo de la publicación. Es un texto más largo para probar el límite de dos líneas."
    )
    
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            
            VStack(alignment: .leading, spacing: 5){
                // TÍTULO
                Text(publicacion.title)
                    .font(.headline)
                    .lineLimit(1)
                    .fontWeight(.bold)
                    .foregroundStyle(accentColor)
                
                Text(publicacion.body)
                    .font(.subheadline)
                    .lineLimit(2)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(minHeight: 70)
        .padding(15)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(cardBackgroundColor)
        }
        .shadow(color: .black.opacity(0.3), radius: 1, x: 0, y: 1)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        
    }
}

#Preview {
    ZStack {
        Color(red: 0.05, green: 0.05, blue: 0.07)
            .edgesIgnoringSafeArea(.all)
        
        VStack {
            Encabezado()
            Encabezado(publicacion: Publicacion(userId: 2, id: 2, title: "Otro Título Corto", body: "Solo una línea."))
        }
        .padding(.top, 50)
    }
    .preferredColorScheme(.dark)
}
