//
//  WelcomeView.swift
//  Preferencias_AppStorage
//
//  Created by Gerardo Valencia Rodríguez on 25/11/23.
//

import SwiftUI

struct WelcomeView: View {
    
    @AppStorage("uName") var uName: String = ""
    @AppStorage("uAge") var uAge: String = ""
    @AppStorage("uHeight") var uHeight: String = ""
    @AppStorage("uWeight") var uWeight: String = ""
    @AppStorage("uHobby") var uHobby: String = ""
    
    var body: some View {
        List {
            Section {
                Text("""
             Nombre: \(uName)
             Edad: \(uAge)
             Estatura: \(uHeight)
             Peso: \(uWeight)
             Hobby: \(uHobby)
             """)
                .font(.system(size: 20, weight: .light, design: .monospaced))
            } header: {
                Text("Perfil Guardado")
                    .font(.system(size: 20, weight: .bold, design: .default ))
            }
        }
    }
}

#Preview {
    WelcomeView()
}
