//
//  App08_TODO_CoreDataApp.swift
//  App08-TODO-CoreData
//
//  Created by David Josué Marcial Quero on 18/10/21.
//

import SwiftUI

@main
struct App08_TODO_CoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
