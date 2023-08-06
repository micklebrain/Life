//
//  CheckListView.swift
//  Tips_08_04_ToDoList
//
//  Created by Steven Lipton on 8/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct CheckListView2: View {
    @FetchRequest(sortDescriptors: []) var missions: FetchedResults<Mission>
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                //                if isAvailable(missions: item.dependant) {
                if (!mission.isDaily) {
                    CheckView(mission: missions[0],
                              isChecked: mission.isCompleted,
                              title: mission.name!,
                              streak: 0)
                }
                //                }
            }
            .listStyle(InsetListStyle())
        }
    }
    
    func isAvailable(missions: Array<String>) -> Bool {
        for mission in missions {
            for category in missionCategories {
                for item in category.items {
                    if mission == item.title {
                        if item.isChecked == false {
                            return false
                        }
                    }
                }
            }
        }
        return true
    }
}

//#if DEBUG
//struct CheckListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CheckListView()
//    }
//}
//#endif

