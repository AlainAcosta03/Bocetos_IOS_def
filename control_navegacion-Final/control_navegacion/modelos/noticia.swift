//
//  personajes.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//

import Foundation

enum Prioridad: String {
    case normal = "Normal"
    case importante = "Importante"
    case sociales = "Sociales"
}

struct Noticia: Identifiable {
    var id = UUID()
    var titular: String
    var cuerpo: String
    var imagen: String
    var prioridad: Prioridad
    
    init(titular: String, cuerpo: String, imagen: String, prioridad: Prioridad) {
        self.titular = titular
        self.cuerpo = cuerpo
        self.imagen = imagen
        self.prioridad = prioridad
    }
}

// Crear algunas noticias de ejemplo
let noticia1 = Noticia(
    titular: "Gran avance tecnológico en inteligencia artificial",
    cuerpo: "Los avances recientes en el campo de la inteligencia artificial han permitido...",
    imagen: "ia",
    prioridad: .importante
)

let noticia2 = Noticia(
    titular: "Aumento de la temperatura global",
    cuerpo: "La temperatura media global sigue en aumento, y los científicos alertan sobre las consecuencias...",
    imagen: "ash-baby",
    prioridad: .normal
)

let noticia3 = Noticia(
    titular: "Redes sociales y su impacto en la salud mental",
    cuerpo: "Estudios recientes han demostrado que el uso excesivo de redes sociales puede tener efectos negativos en la salud mental...",
    imagen: "wojak",
    prioridad: .sociales
)

let noticia4 = Noticia(
    titular: "Nuevo descubrimiento en la arqueología moderna",
    cuerpo: "Un equipo de arqueólogos ha descubierto una antigua civilización en el desierto de Egipto...",
    imagen: "arqueologico",
    prioridad: .importante
)

let noticia5 = Noticia(
    titular: "La situación política en el país X",
    cuerpo: "El panorama político se ha vuelto más tenso en las últimas semanas debido a...",
    imagen: "nepal",
    prioridad: .normal
)

// Noticias Cómicas
let noticia6 = Noticia(
    titular: "¡Un gato se postula para presidente en Israel!",
    cuerpo: "El candidato felino promete más siestas, menos trabajo y muchos más ratones para todos...",
    imagen: "gato",
    prioridad: .importante
)

let noticia7 = Noticia(
    titular: "Una vaca se escapa de la granja y ahora es influencer",
    cuerpo: "La vaca, conocida como 'MooMoo', tiene más seguidores que muchos humanos en Instagram, y su lema es: 'No me sigas, ¡mejor corre!'",
    imagen: "vaca",
    prioridad: .normal
)

let noticia8 = Noticia(
    titular: "Científicos descubren que las plantas también pueden ser perezosas",
    cuerpo: "En un inesperado giro, un equipo de científicos descubrió que las plantas tardan más en crecer cuando escuchan música triste.",
    imagen: "planta",
    prioridad: .normal
)

let noticia9 = Noticia(
    titular: "El sol decide tomarse un descanso, la Tierra queda en modo noche permanente",
    cuerpo: "En una noticia de última hora, el sol anunció que está tomando unas vacaciones, lo que provocó una interminable noche sobre el planeta.",
    imagen: "sol",
    prioridad: .importante
)

// Agrupar todas las noticias en un arreglo
let noticias = [noticia1, noticia2, noticia3, noticia4, noticia5, noticia6, noticia7, noticia8, noticia9]




