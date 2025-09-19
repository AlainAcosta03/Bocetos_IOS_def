//
//  TrackFila.swift
//  iDroid
//
//  Created by alumno on 9/17/25.
//
import SwiftUI

struct TrackFila: View {
   var numero: String
   var titulo: String
   var estaEscuchandose: Bool = false
   var body: some View {
       HStack {
           Text(numero)
               .foregroundColor(.white)
               .frame(width: 30, alignment: .leading)
           
           Text(titulo)
               .foregroundColor(.white)
           
           Spacer()
           if estaEscuchandose {
               Image(systemName: "speaker.wave.2.fill")
                   .foregroundColor(.yellow)
           }
       }
       .padding(10)
       .border(Color(hue: 0.513, saturation: 0.472, brightness: 0.999))
       .frame(width: 400)
       .font(.subheadline)
       
   }
}

#Preview {
    TrackFila(numero: "DEMO|", titulo: "DEMO", estaEscuchandose: false)
}
