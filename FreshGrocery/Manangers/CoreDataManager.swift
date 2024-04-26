//
//  CoreDataManager.swift
//  FreshGrocery
//
//  Created by Jonas Bergström on 2024-04-27.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "FreshGroceryModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to init Core Data \(error)")
            }
        }
    }
}
