//
//  pantalla_perfil.swift
//  control_navegacion
//
//  Created by alumno on 10/10/25.
//

import SwiftUI

struct PantallaPerfil: View {
    
    var usuario: Usuario
    
    private let mainBackgroundColor = Color(red: 0.05, green: 0.05, blue: 0.07)
    private let cardBackgroundColor = Color(red: 0.11, green: 0.11, blue: 0.12)
    private let accentColor = Color(red: 0.82, green: 0.35, blue: 0.12)
    
    var body: some View {
        ZStack {
            mainBackgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Información Personal")
                        .font(.title3)
                        .foregroundColor(accentColor)
                        .foregroundStyle(Color(red: 0.05, green: 0.05, blue: 0.07))
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Nombre:")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Text(usuario.name)
                            .foregroundColor(.white)
                    }
                    
                    HStack {
                        Text("Usuario:")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Text("@\(usuario.username)")
                            .foregroundColor(.white)
                    }
                    
                    HStack {
                        Text("Email:")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Text(usuario.email)
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: 330, alignment: .leading)
                .padding()
                .background(cardBackgroundColor)
                .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Dirección")
                        .font(.title3)
                        .foregroundColor(accentColor)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Ciudad:")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Text(usuario.address.city)
                            .foregroundColor(.white)
                    }
                    
                    HStack {
                        Text("Calle:")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Text(usuario.address.street)
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: 330, alignment: .leading)
                .padding()
                .background(cardBackgroundColor)
                .cornerRadius(10)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        PantallaPerfil(usuario: Usuario(
            id: 1,
            name: "Leanne Graham",
            username: "Bret",
            email: "Sincere@april.biz",
            address: Address(street: "Kulas Light", city: "Gwenborough")
        ))
    }
    .preferredColorScheme(.dark)
}
