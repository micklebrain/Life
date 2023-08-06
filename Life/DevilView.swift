//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct DevilView: View {
    @FetchRequest(sortDescriptors: []) var missions: FetchedResults<Mission>
    
    var body: some View {
        VStack {
            List(devilsData) { item in
                CheckView(
                          mission: missions[0],
                          isChecked: item.isChecked,
                          title: item.title,
                          streak: item.streak)
            }.listStyle(InsetListStyle())
        }
    }
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemView()
//    }
//}
