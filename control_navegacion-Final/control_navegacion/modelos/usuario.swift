//
//  usuario.swift
//  control_navegacion
//
//  Created by alumno on 10/10/25.
//
struct Address: Codable {
    let street: String
    let city: String
}


struct Usuario: Identifiable, Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
}
