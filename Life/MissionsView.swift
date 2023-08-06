//
//  CheckListView.swift
//  Tips_08_04_ToDoList
//
//  Created by Steven Lipton on 8/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct MissionsView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var missions: FetchedResults<Mission>
    
    var body: some View {
        TabView {
            CheckListView()
                .badge(missions.filter({$0.isCompleted == false && $0.isDaily == true}).count)
                .tabItem {
                    Label("Daily", systemImage: "arrow.clockwise")
                }
                .tag(1)
//            CheckListView2()
//                .badge(missionCategories[0].items.filter({$0.isChecked == false}).count)
//                .tabItem {
//                    Label("Active", systemImage: "cloud.moon")
//                }
//                .tag(2)
            CheckListView3()
                .badge(missions.filter({$0.isCompleted == true && $0.isDaily == true}).count)
                .tabItem {
                    Label("Finished", systemImage: "arrow.clockwise.circle")
                }
                .tag(2)
        }
    }
}
