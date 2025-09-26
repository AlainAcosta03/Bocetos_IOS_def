//
//  pantalla_3.swift
//  boceto_02
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

enum SaboresPalomitas: String,CaseIterable, Identifiable
    {
    case Mantequilla, Natural, QuesoChedar, Doritos, Proteina
    
    var id: Self { self }
}

enum GeneroPeliculas: String,CaseIterable, Identifiable
    {
    case Comedia, Accion, Terror, Drama, Documental
    
    var id: Self { self }
}

enum OpcionesJuegos: String,CaseIterable, Identifiable
    {
    case Smash, Street_Fighter_6, Mario_kart, Monopoly
    
    var id: Self { self }
}

enum OpcionesComida: String,CaseIterable, Identifiable
    {
    case Pizza, Hamburguesa, Carne_asada, Tacos
    
    var id: Self { self }
}

struct PantallaOpciones: View{
    @State var quiere_ver_pelicula: Bool = false
    @State var genero_de_peliculas: GeneroPeliculas = .Comedia
    
    @State var quiere_jugar: Bool = false
    @State var opciones_de_juegos: OpcionesJuegos = .Mario_kart
    
    @State var quiere_palomitas: Bool = false
    @State var sabor_de_palomitas: SaboresPalomitas = .Mantequilla
    
    @State var quiere_comprar_comida: Bool = false
    @State var opciones_de_comida: OpcionesComida = .Pizza
    
    @State var cantidad_de_palomitas: Float = 4.00
    
    var body: some View{
        ScrollView{
            VStack{
                
                Text("Fromulario para calcular la cantidad de palomitas")
                
                Divider()
                
                    
                    Text("¿Que dia estas disponible y en que hora?")
                    
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Fecha") })
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Text("¿Quieres ver una pelicula?")
                    
                    Spacer()
                    
                    CajaSeleccionada(checado: $quiere_ver_pelicula, tamaño: 25)
                    
                    Spacer()
                }
                
                if( quiere_ver_pelicula == true){
                    VStack{
                        HStack{
                            
                            Text("¿Que genero de pelicula?")
                            
                            Picker(selection: $genero_de_peliculas, label: Text("Selecciona el genero: ")){
                                Text("Comedia").tag(GeneroPeliculas.Comedia)
                                Text("Accion").tag(GeneroPeliculas.Accion)
                                Text("Terror").tag(GeneroPeliculas.Terror)
                                Text("Drama").tag(GeneroPeliculas.Drama)
                                Text("Documental").tag(GeneroPeliculas.Documental)
                            }
                        }
                    }
                }
                
                HStack{
                    Spacer()
                    
                    Text("¿Quieres palomitas?")
                    
                    Spacer()
                    
                    CajaSeleccionada(checado: $quiere_palomitas, tamaño: 25)
                    
                    Spacer()
                }
                
                
                if quiere_palomitas == true{
                    VStack{
                        HStack{
                            
                            Text("¿Cual sabor?")
                            
                            Picker(selection: $sabor_de_palomitas, label: Text("Sabor de palomitas: ")) {
                                Text("Mantequilla").tag(SaboresPalomitas.Mantequilla)
                                Text("Naturales").tag(SaboresPalomitas.Natural)
                                Text("Queso Chedar").tag(SaboresPalomitas.QuesoChedar)
                                Text("Doritos").tag(SaboresPalomitas.Doritos)
                                Text("Proteina").tag(SaboresPalomitas.Proteina)
                            }
                        }
                    }
                    VStack{
                        Text("¿Cuantas palomitas quieres comer?")
                        
                        Text("\(cantidad_de_palomitas)")
                        
                        Slider(value: $cantidad_de_palomitas,
                               in: 1...1000)
                    }
                }
                
                HStack{
                    Spacer()
                    
                    Text("¿Quieres jugar un videojuego al salir de la funcion?")
                    
                    Spacer()
                    
                    CajaSeleccionada(checado: $quiere_jugar, tamaño: 25)
                    
                    Spacer()
                }
                
                if quiere_jugar == true{
                    VStack{
                        HStack{
                            
                            Text("¿Que quieres jugar?")
                            
                            Picker(selection: $opciones_de_juegos, label: Text("Videojuegos: ")) {
                                Text("Mario Kart").tag(OpcionesJuegos.Mario_kart)
                                Text("Smash Ultimate").tag(OpcionesJuegos.Smash)
                                Text("Street Fighter 6").tag(OpcionesJuegos.Street_Fighter_6)
                                Text("Monopoly").tag(OpcionesJuegos.Monopoly)
                            }
                        }
                        
                        if opciones_de_juegos == .Monopoly{
                            Text("Ese no es un videojuego. Baboso")
                        }
                    }
                    
                }
                
                HStack{
                    
                    Spacer()
                    
                    Text("¿Quieres comprar comida despues?")
                    
                    Spacer()
                    
                    CajaSeleccionada(checado: $quiere_comprar_comida, tamaño: 25)
                    
                    Spacer()
                }
                
                if quiere_comprar_comida == true{
                    VStack{
                        HStack{
                            
                            Text("¿Que quieres comer?")
                            
                            Picker(selection: $opciones_de_comida, label: Text("Opciones: ")) {
                                Text("Carne asada").tag(OpcionesComida.Carne_asada)
                                Text("Hamburguesa").tag(OpcionesComida.Hamburguesa)
                                Text("Pizza").tag(OpcionesComida.Pizza)
                                Text("Tacos").tag(OpcionesComida.Tacos)
                            }
                        }
                    }
                    
                }
                
            }
        }
        
    }
    
}

#Preview {
    PantallaOpciones()
        .environment(ControladorBasico())
}
