//
//  OctavoApp.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

@main
struct OctavoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
