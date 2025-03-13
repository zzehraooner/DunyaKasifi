//
//  EquipmentSelectionView.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 12.03.2025.
//

import SwiftUI

struct EquipmentSelectionView: View {
    @State private var selectedItems: [String] = []

    let equipmentOptions = ["Dürbün", "Sihirli Pusula", "Not Defteri", "Fotoğraf Makinesi"]

    var body: some View {
        VStack {
            Text("Keşif Ekipmanlarını Seç 🏕️")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            ForEach(equipmentOptions, id: \.self) { item in
                Button(action: {
                    if selectedItems.contains(item) {
                        selectedItems.removeAll { $0 == item }
                    } else {
                        selectedItems.append(item)
                    }
                }) {
                    HStack {
                        Image(systemName: selectedItems.contains(item) ? "checkmark.square.fill" : "square")
                            .foregroundColor(selectedItems.contains(item) ? .green : .gray)
                        Text(item)
                            .font(.title2)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                }
                .padding(.horizontal)
            }

            NavigationLink(destination: VehicleSelectionView(selectedEquipment: selectedItems)) {
                Text("Devam Et 🚀")
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
        .padding()
    }
}

#Preview {
    EquipmentSelectionView()
}
