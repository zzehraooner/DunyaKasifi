//
//  ContentView.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 12.03.2025.
//

import SwiftUI
import CoreData

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Dünya Kaşifi 🌍")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                NavigationLink(destination: AvatarView()) {
                    Text("Oyuna Başla 🚀")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
