//
//  boceto_02App.swift
//  boceto_02
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

@main
struct boceto_02App: App {
    @State var controlador = ControladorBasico()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(controlador)
        }
    }
}
