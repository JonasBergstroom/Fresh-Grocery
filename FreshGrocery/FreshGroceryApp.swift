//
//  FreshGroceryApp.swift
//  FreshGrocery
//
//  Created by Jonas Bergström on 2024-04-27.
//

import SwiftUI

@main
struct FreshGroceryApp: App {
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
