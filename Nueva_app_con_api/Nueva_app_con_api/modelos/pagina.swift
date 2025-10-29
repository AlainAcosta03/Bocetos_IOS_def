//
//  pagina.swift
//  Nueva_app_con_api
//
//  Created by alumno on 10/20/25.
//
struct DatosPagina: Codable {
    let totalElements: Int
    let elementsOnPage: Int
    let currentPage: Int
    let totalPages: Int
}


struct Pagina: Codable {
    let datos: DatosPagina
    let personajes: [Personaje]
    
    enum CodingKeys: String, CodingKey {
        case datos = "pagination"
        case personajes = "content"
    }
}
