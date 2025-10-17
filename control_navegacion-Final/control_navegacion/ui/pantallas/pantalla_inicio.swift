//
//  pantalla_inicio.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI


struct PantallaInicio: View{
    var body: some View{
        NavigationStack{
            VStack{
                Text("Bienvenidos al Himalaya")
                
                NavigationLink {
                    PantallaConfiguracion()
                } label: {
                    Text("Ir a pantalla configuracion")
                }
                
                NavigationLink {
                    PantallaGaleria()
                } label: {
                    Text("Ir a pantalla galeria")
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        PantallaInicio()
    }
}
