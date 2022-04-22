//
//  ContentView.swift
//  MoveSlider
//
//  Created by Вячеслав Квашнин on 23.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var valueSlider = 0.5
    @State private var randomNumber = Int.random(in: 0...100)
    var body: some View {
        VStack(spacing: 50) {
            
            Text("Подвиньте слайдер как можно ближе к: \(randomNumber)")
            
            HStack {
                Text("0")
                Slider(value: $valueSlider)
                Text("100")
            }
            
            Button("Проверь меня!") {
                
            }
            
            Button("Начать заново") {
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
