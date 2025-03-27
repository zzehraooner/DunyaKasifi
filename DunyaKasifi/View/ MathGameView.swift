//
//   MathGameView.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 27.03.2025.
//
import SwiftUI

struct MathGameView: View {
    @State private var score = 0
    @State private var question = ""
    @State private var answer = ""
    
    let number1 = Int.random(in: 1...10)
    let number2 = Int.random(in: 1...10)
    
    var body: some View {
        VStack {
            Text("Solve the problem!")
                .font(.title)
            
            Text("What is \(number1) + \(number2)?")
                .font(.title2)
            
            TextField("Your Answer", text: $answer)
                .padding()
                .keyboardType(.numberPad)
            
            Button("Submit") {
                if Int(answer) == (number1 + number2) {
                    score += 1
                }
                answer = ""
            }
            .padding()
            
            Text("Score: \(score)")
                .font(.title)
                .padding()
        }
    }
}
