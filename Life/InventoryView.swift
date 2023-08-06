//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI
import SceneKit

struct InventoryView: View {
    
    var cars = 0
    var houses = 0
    var boats = 0
    
    @Binding var item: Item
    @Binding var showingItem: Bool
    @Binding var showingBackpack: Bool
    //    @Binding var tabSelection: Int
    
    var body: some View {
        let items = [
            Item(name: "USA Passport", emoji: "📃", description: "Ranked 6 in world. 186 Visa free destinations"),
            Item(name: "USA Driver's licence", emoji: "🪪", description: ""),
            Item(name: "iPhone 14/14", emoji: "📱", description: ""),
            Item(name: "USA e sim card", emoji: "", description: ""),
            Item(name: "Macbook Pro", emoji: "💻", description: ""),
            Item(name: "iPad", emoji: "", description: ""),
            Item(name: "Frontier GoWild all you can fly pass!", emoji: "✈️", description: ""),
            Item(name: "Anytime fitness membership", emoji: "🏋️‍♀️", description: "")
        ]
        
        let itemsForSale = [
            Item(name: "Japan Visa", emoji: "", description: ""),
            Item(name: "Japan passport", emoji: "", description: ""),
            Item(name: "Korea Visa", emoji: "", description: ""),
            Item(name: "Korea passport", emoji: "", description: ""),
            Item(name: "international license", emoji: "", description: ""),
            Item(name: "suit", emoji: "", description: ""),
            Item(name: "Super car $200,000", emoji: "", description: ""),
            Item(name: "Yacht $370,000", emoji: "", description: ""),
            Item(name: "Mansion $1,000,000", emoji: "", description: ""),
            Item(name: "Jet $2,000,000", emoji: "", description: ""),
            Item(name: "healthcare", emoji: "", description: ""),
        ]
        
        let columns = [
            GridItem(.adaptive(minimum: 110))
        ]
        
        ScrollView {
            Text("Store")
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(itemsForSale) { item in
                    Text("\(item.name) \n \(item.emoji)")
                }
            }
            .padding(.horizontal)
            Divider()
            Text("Inventory")
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items) { item in
                    Button("\(item.name) \n \(item.emoji)", action: {showItem(selectedItem: item)})
                }
            }
            .padding(.horizontal)
            Button("Back", action: {showingBackpack = false})
        }
    }
    
    func showItem(selectedItem: Item) {
        item = selectedItem
        showingItem = true
        //        tabSelection = 1
    }
}

//struct InventoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        InventoryView()
//    }
//}
