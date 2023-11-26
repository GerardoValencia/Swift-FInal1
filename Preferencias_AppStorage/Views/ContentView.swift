//
//  ContentView.swift
//  Preferencias_AppStorage
//
//  Created by Gerardo Valencia Rodríguez on 25/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            WelcomeView()
                .tabItem() {
                    Label("Perfil", systemImage: "house.circle.fill")
                }
            SavedDataView()
                .tabItem() {
                    Label("Info", systemImage: "info.circle")
                }
        }
        .accentColor(Color.green)
        .padding()
    }
}

#Preview {
    ContentView()
}
