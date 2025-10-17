//
//  publicacion.swift
//  control_navegacion
//
//  Created by alumno on 6/10/25.
//

struct Publicacion: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
