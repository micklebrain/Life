//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var item: Item
    @Binding var showingItem: Bool

    var body: some View {
        VStack {
            Text("Item")
            Text(item.name).padding()
            Text(item.emoji).padding()
            Text(item.description).padding()
            Button("Back", action: {showingItem = false})
        }
    }
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemView()
//    }
//}
