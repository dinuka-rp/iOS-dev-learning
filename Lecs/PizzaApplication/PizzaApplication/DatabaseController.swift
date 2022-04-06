//
//  DatabaseController.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-04-06.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    // the name should be the same as the core data DB model
    let container = NSPersistentContainer(name: "Pizzas")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data loading error: \(error.localizedDescription)")
            }
        }
    }
}
