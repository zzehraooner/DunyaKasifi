//
//  ExplorerCertificateView.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 12.03.2025.
//

import SwiftUI

struct ExplorerCertificateView: View {
    var selectedVehicle: String // Kullanıcının seçtiği araç

    var body: some View {
        VStack {
            Text("🌍 Dünya Kaşifi Sertifikası 🌍")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()

            Text("Ben bir Dünya Kaşifiyim! \nMeraklıyım, araştırırım ve dünyayı keşfetmeye hazırım! 🌟")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()

            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .padding()

            Text("🚀 Keşif Aracım: \(selectedVehicle)")
                .font(.title2)
                .padding()

            Button(action: {
                shareCertificate()
            }) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Sertifikayı Paylaş")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            }
            .padding()

            // Uçuş rotası butonunu burada ekleyebilirsin
            NavigationLink(destination: FlightRouteView()) {
                Text("Uçuş Rotasını Göster 🌍✈️")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
            .padding()

            Spacer()
        }
        .padding()
    }

    func shareCertificate() {
        let text = "Dünya Kaşifi oldum! 🚀 Benim keşif aracım: \(selectedVehicle)"
        let activityVC = UIActivityViewController(activityItems: [text], applicationActivities: nil)

        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootVC = windowScene.windows.first?.rootViewController {
            rootVC.present(activityVC, animated: true, completion: nil)
        }
    }
}

#Preview {
    ExplorerCertificateView(selectedVehicle: "Sihirli Halı")
}
