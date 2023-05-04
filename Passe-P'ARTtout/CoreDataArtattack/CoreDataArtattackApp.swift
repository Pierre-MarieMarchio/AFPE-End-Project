//
//  CoreDataArtattackApp.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 23/03/2023.
//

import SwiftUI

@main
struct CoreDataArtattackApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var appData = ApplicationData()

    var body: some Scene {
        WindowGroup {
            MapView()
                .environmentObject(appData)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)     
        }
    }
}
