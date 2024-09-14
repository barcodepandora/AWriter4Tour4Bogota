//
//  ContentView.swift
//  AWriter4Tour4Bogota
//
//  Created by Juan Manuel Moreno on 14/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text = ""
    @State private var editedForBogota = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("¿Donde estoy en Bogota?")
            TextEditor(text: $text)
                .onChange(of: text) {
                    editForBogota(text: text)
                }
            Text(editedForBogota)
            Button(action: { UIPasteboard.general.string = text }, label: {
                Text("Copiar")
            })
        }
        .padding()
    }
    
    func editForBogota(text: String) {
        if text == "C " {
            editedForBogota = "Calle"
        }
    }
}

#Preview {
    ContentView()
}
