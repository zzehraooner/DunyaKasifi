//
//  AvatarView.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 12.03.2025.
//

import SwiftUI


struct AvatarView: View {
    @State private var selectedHair = "Saç 1"
    @State private var selectedEyeColor = "Mavi"
    @State private var selectedOutfit = "Kıyafet 1"

    let hairOptions = ["Saç 1", "Saç 2", "Saç 3"]
    let eyeColors = ["Mavi", "Yeşil", "Kahverengi"]
    let outfits = ["Kıyafet 1", "Kıyafet 2", "Kıyafet 3"]

    var body: some View {
        VStack {
            Text("Avatarını Oluştur ✨")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Image("avatar_placeholder")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Picker("Saç Stili", selection: $selectedHair) {
                ForEach(hairOptions, id: \.self) { option in
                    Text(option)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Picker("Göz Rengi", selection: $selectedEyeColor) {
                ForEach(eyeColors, id: \.self) { color in
                    Text(color)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Picker("Kıyafet", selection: $selectedOutfit) {
                ForEach(outfits, id: \.self) { outfit in
                    Text(outfit)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            NavigationLink(destination: EquipmentSelectionView()) {
                Text("Keşif Ekipmanlarını Seç 🏕️")
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

#Preview {
    AvatarView()
}
