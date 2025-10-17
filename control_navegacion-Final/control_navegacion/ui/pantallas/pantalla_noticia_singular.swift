//
//  pantalla_noticia_singular.swift
//  control_navegacion
//
//  Created by alumno on 1/10/25.
//

import SwiftUI

struct PantallaNota: View{
    @State var noticia: Noticia
    var body: some View {
        HStack{
            VStack{
                Text(noticia.titular)
                    .fontWeight(.bold)
                    .fontWidth(.expanded)
                HStack{
                    Image(noticia.imagen)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                    Text(noticia.cuerpo)
                }
                Spacer()
            }
            
        }
    }
}



#Preview {
    PantallaNota(noticia: noticias[3])
}
