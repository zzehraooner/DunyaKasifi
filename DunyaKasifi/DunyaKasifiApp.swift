//
//  DunyaKasifiApp.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 12.03.2025.
//

import SwiftUI

@main
struct DunyaKasifiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
