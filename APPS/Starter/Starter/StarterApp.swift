//
//  StarterApp.swift
//  Starter
//
//  Created by csuftitan on 11/13/23.
//

import SwiftUI

@main
struct StarterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Hello()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
