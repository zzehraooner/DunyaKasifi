//
//  ARViewContainer.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 27.03.2025.
//

import ARKit
import SwiftUI

struct ARViewContainer: UIViewRepresentable {
    let modelName: String
    
    func makeUIView(context: Context) -> ARSCNView {
        let sceneView = ARSCNView()
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
        return sceneView
    }
    
    func updateUIView(_ uiView: ARSCNView, context: Context) {
        let scene = SCNScene(named: modelName)
        uiView.scene = scene!
    }
}

struct ARView: View {
    var body: some View {
        ARViewContainer(modelName: "eiffel_tower.scn")
            .edgesIgnoringSafeArea(.all)
    }
}
