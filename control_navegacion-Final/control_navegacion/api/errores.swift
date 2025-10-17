//
//  errores.swift
//  control_navegacion
//
//  Created by alumno on 6/10/25.
//

enum ErroresDeRed: Error{
    case url_mala // Hay una direccion mal escrota
    case peticion_invalida // Existe un error en la peticion HTTP
    case respuesta_erronea // Los datos recibidos son incorrectos
    case estado_negativo //Algo diferente al StatusCode: 200 de HTTP
    case falla_al_decodificar_informacion //La cajetee al escribir el modelo
}

