//
//  ContentView.swift
//  iDroid
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center){
            // Fondo
            LinearGradient(
                gradient: Gradient(colors: [Color(hue: 0.516, saturation: 0.91, brightness: 0.397), Color(hue: 0.550, saturation: 0.923, brightness: 0.288)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 20){
                Text("SELECTED CASSET TAPE")
                    .font(.headline)
                    .foregroundStyle(Color(hue: 0.513, saturation: 0.472, brightness: 0.999))
                
                Text("Musical content")
                    .font(.headline)
                    .frame(width: 410)
                    .foregroundStyle(Color(hue: 0.516, saturation: 0.91, brightness: 0.397))
                    .background(Color(hue: 0.513, saturation: 0.472, brightness: 0.999))
                
                //Fila de reproduccion
                VStack(alignment: .center){
                    HStack(){
                        Image(systemName: "speaker.wave.1.fill")

                        Rectangle()
                            .frame(width: 280, height: 12 )
                        
                        Text("00:02")
                        
                        Text("/")
                        
                        Text("--:--")
                        
                    }
                    .font(.caption)
                    .foregroundStyle(Color(hue: 0.513, saturation: 0.472, brightness: 0.999))
                    
                    //Fila de iconos
                    HStack(spacing: 20) {
                                    Image(systemName: "backward.fill")
                                    Image(systemName: "pause.fill")
                                    Image(systemName: "stop.fill")
                                    Image(systemName: "forward.fill")
                                    Image(systemName: "repeat")
                                    Image(systemName: "speaker.slash.fill")
                                   }
                                   .foregroundStyle(Color(hue: 0.513, saturation: 0.472, brightness: 0.999))
                                   .font(.title3)
                                   .padding(.vertical, 10)
                    
                    Text("TRACK")
                        .foregroundStyle(Color(hue: 0.513, saturation: 0.472, brightness: 0.999))
                    
                    //Lista de canciones
                    ScrollView {
                        VStack(alignment: .center, spacing: 0) {
                            TrackFila(numero: "01", titulo: "About You")
                            TrackFila(numero: "02", titulo: "VCR")
                            TrackFila(numero: "03", titulo: "Fields")
                            TrackFila(numero: "04", titulo: "Alone")
                            TrackFila(numero: "05", titulo: "Heart Skipped A Beat", estaEscuchandose: true)
                            TrackFila(numero: "06", titulo: "DMT")
                            TrackFila(numero: "07", titulo: "Shelter")
                            TrackFila(numero: "11", titulo: "Witching Hour")
                        }
                    }
                    
                }
                    
                
            }
            
        }
    }
}





#Preview {
    ContentView()
}
