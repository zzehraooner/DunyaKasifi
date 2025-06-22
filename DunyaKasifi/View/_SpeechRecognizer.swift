//
//   SpeechRecognizer.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 27.03.2025.
//

import AVFoundation
import SwiftUI

class SpeechRecognizer: ObservableObject {
    private var audioRecorder: AVAudioRecorder?
    
    func startRecording() {
        // Ses kaydı başlatma işlemi
    }
    
    func stopRecording() {
        // Ses kaydını bitirme işlemi
    }
    
    func playSound(fileName: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "mp3")
        var player: AVAudioPlayer?
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("Error playing sound")
        }
    }
}

struct SpeechGameView: View {
    @ObservedObject var speechRecognizer = SpeechRecognizer()
    
    var body: some View {
        VStack {
            Text("Say the word correctly!")
                .font(.title)
            
            Button("Play Word") {
                speechRecognizer.playSound(fileName: "hello")  // Sesli kelime çalınacak
            }
            .padding()
            
            Button("Start Recording") {
                speechRecognizer.startRecording()
            }
            .padding()
            
            Button("Stop Recording") {
                speechRecognizer.stopRecording()
            }
            .padding()
        }
    }
}
