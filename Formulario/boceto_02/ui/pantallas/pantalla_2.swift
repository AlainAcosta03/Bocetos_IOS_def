//
//  pantall2.swift
//  boceto_02
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

struct Pantalla2: View{
    @Environment(ControladorBasico.self) var controlador
    
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.up")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Bienvenido a la pantalla dos donde clicks vale: \(controlador.clicks)")
        }
        .onTapGesture {
            controlador.clicks += 1
        }
        .padding()
    }
    

}

#Preview {
    Pantalla2()
        .environment(ControladorBasico())
}
