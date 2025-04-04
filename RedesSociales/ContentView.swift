//
//  ContentView.swift
//  RedesSociales
//
//  Created by Jadzia Gallegos on 24/03/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        GeneralPublicaciones()
    }
}

#Preview {
    ContentView()
        .environment(ControladorAplicacion())
}
