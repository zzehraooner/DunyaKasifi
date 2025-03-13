//
//  VehicleSelectionView.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 12.03.2025.
//

import SwiftUI

struct VehicleSelectionView: View {
    var selectedEquipment: [String] // Önceki sayfadan gelen ekipmanlar

    let vehicleOptions = ["Sihirli Halı", "Küçük Uçak", "Roket", "Sıcak Hava Balonu"]
    @State private var selectedVehicle: String?

    var body: some View {
        VStack {
            Text("Favori Keşif Aracını Seç 🚀")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            ForEach(vehicleOptions, id: \.self) { vehicle in
                Button(action: {
                    selectedVehicle = vehicle
                }) {
                    HStack {
                        Image(systemName: selectedVehicle == vehicle ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(selectedVehicle == vehicle ? .green : .gray)
                        Text(vehicle)
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

            NavigationLink(destination: ExplorerCertificateView(selectedVehicle: selectedVehicle ?? "Bilinmeyen Araç")) {
                Text("Devam Et 🏆")
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
    VehicleSelectionView(selectedEquipment: [])
}
