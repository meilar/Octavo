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
    @State private var books = Book.sampleData

    var body: some Scene {
        WindowGroup {
            NavigationView {
                
                HomeScreenView(books: $books)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
