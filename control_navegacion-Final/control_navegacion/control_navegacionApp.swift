//
//  control_navegacionApp.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

@main
struct control_navegacionApp: App {
    @State var controlador_app = ControladorGeneral()
    
    var body: some Scene {
        WindowGroup {
            NavegacionPrincipal()
                .environment(controlador_app)
        }
    }
}
