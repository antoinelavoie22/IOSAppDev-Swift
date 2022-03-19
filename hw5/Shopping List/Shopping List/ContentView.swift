//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}


struct ContentView: View {
        var list = [
            Items(imageName: "banana", itemName: "Bananas", quantity: 3),
            Items(imageName: "apple", itemName: "Apples", quantity: 4),
            Items(imageName: "eggs", itemName: "Eggs", quantity: 12),
        ]
        
        var listveg = [
            Items(imageName: "broccoli", itemName: "Broccolis", quantity: 11),
            Items(imageName: "cabbage", itemName: "Cabbage", quantity: 3)
        ]
    
        var listcereal = [
            Items(imageName: "captain cruch", itemName: "Captain Crunch", quantity: 3),
            Items(imageName: "fruit loop", itemName: "fruit loop", quantity: 7),
        ]
        
        var body: some View {
            NavigationView {
                List(list) { i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }.navigationTitle("Shopping List")
                
                
                List {
                    Section(header: Text("Fruits")) {
                        ForEach(list) { i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }
                    }
                }
                
                List {
                    Section(header: Text("Vegetables")) {
                        ForEach(listveg) { i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }
                    }
                }
                
                List {
                    Section(header: Text("Cereal")) {
                        ForEach(listcereal) { i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }
                    }
                }
            }
        }
}

