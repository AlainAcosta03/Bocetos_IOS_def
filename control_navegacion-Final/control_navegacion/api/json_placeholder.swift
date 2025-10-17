//
//  json_placeholder.swift
//  control_navegacion
//
//  Created by alumno on 6/10/25.
//
import Foundation

class ServicioWeb{
    func descargar_datos<T: Codable>(url: String) async -> T?{
        do{
            guard let url = URL(string: url) else { throw
                ErroresDeRed.url_mala }
            let(datos, respuesta) = try await URLSession.shared.data(from: url)
            guard let respuesta = respuesta as? HTTPURLResponse else { throw
                ErroresDeRed.respuesta_erronea}
            guard respuesta.statusCode >= 200 && respuesta.statusCode < 300
                else{ throw ErroresDeRed.estado_negativo }
            
            guard let respuesta_decodificada = try?
                JSONDecoder().decode(T.self, from: datos) else { throw
                ErroresDeRed.falla_al_decodificar_informacion }
            
            return respuesta_decodificada
        }
        
        catch ErroresDeRed.url_mala{
            print("Por favor escribe algo que sea una URL")
        }
        
        catch ErroresDeRed.respuesta_erronea {
            print("Al parecer al servidor le esta dando un Stroke")
        }
        
        catch ErroresDeRed.estado_negativo {
            print("Al parecer la url que buscas no existe o el servidor está ocupado. Vuelva pronto")
        }
        
        catch ErroresDeRed.falla_al_decodificar_informacion{
            print("Al parecer tus estructuras estan mal escrotas. Por favor, verifica \(type(of: T.self))")
        }
        
        catch {
            print("Algo salio mal y no sé que es")
        }
        
        return nil
    }
}
