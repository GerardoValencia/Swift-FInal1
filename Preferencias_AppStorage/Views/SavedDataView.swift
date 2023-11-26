//
//  SavedDataView.swift
//  Preferencias_AppStorage
//
//  Created by Gerardo Valencia Rodríguez on 25/11/23.
//

import SwiftUI

struct SavedDataView: View {
    
    @AppStorage("uName") var uName: String = ""
    @AppStorage("uAge") var uAge: String = ""
    @AppStorage("uHeight") var uHeight: String = ""
    @AppStorage("uWeight") var uWeight: String = ""
    @AppStorage("uHobby") var uHobby: String = ""
    
    @State var name: String = ""
    @State var age: String = ""
    @State var height: String = ""
    @State var weight: String = ""
    @State var hobby: String = ""
    
    var body: some View {
        
        List {
            Section {
                VStack {
                    
                    TextField("Nombre: ", text: $name)
                        .font(.headline)
                    TextField("Edad: ", text: $age)
                        .font(.headline)
                    TextField("Estatura: ", text: $height)
                        .font(.headline)
                    TextField("Peso: ", text: $weight)
                        .font(.headline)
                    TextField("Hobby: ", text: $hobby)
                        .font(.headline)
                    
                    Button  (action: {
                        uName = name
                        uAge = age
                        uHeight = height
                        uWeight = weight
                        uHobby = hobby
                    }){
                        Text("Save")
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.cyan)
                }
            } header: {
                Text("Datos Personales")
                    .font(.system(size: 20, weight: .bold, design: .default ))
                    
            }
        }
    }
}

#Preview {
    SavedDataView()
}
