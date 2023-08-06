//
//  CheckView.swift
//  Tips_08_04_ToDoList
//
//  Created by Steven Lipton on 8/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct CheckView: View {
    @Environment(\.managedObjectContext) var moc
    
    @State private var isPresented = false
    
    var mission: Mission
    @State var isChecked:Bool = false
    var title: String
    var streak: Int
    func toggle() {
        mission.isCompleted = !isChecked
        try? moc.save()
        isChecked = !isChecked
    }
    func viewMission() {
        print("View mission")
    }
    var body: some View {
        if isChecked {
            HStack{
                Button(action: toggle) {
                    Image(systemName: mission.isCompleted ? "checkmark.square" : "square")
                }
                Text(title)
                Text(mission.percentile ?? "99%")
                //                Text(String(streak))
//                Button(
//                    action: {
//                        isPresented.toggle()
//                    }, label: {
//                        Image(systemName: "eye")
//                    }
//                ).sheet(
//                    // 3
//                    isPresented: $isPresented,
//                    // 4
//                    onDismiss: {
//                        print("Modal dismissed. State now: \(isPresented)")
//                    },
//                    // 5
//                    content: {
//                        Text("Completed")
//                        Text(title)
//                        Text("Ahead")
//                    }
//                )
            }.frame(maxWidth: .infinity,
                    minHeight: 50)
            .padding(3)
            .border(.green, width: 2)
            .background(.green)
            .cornerRadius(25
            )
        } else {
            HStack{
                Button(action: toggle) {
                    Image(systemName: mission.isCompleted ? "checkmark.square" : "square")
                }
                Text(title)
                Text(mission.percentile ?? "99%")
                //                Text(String(streak))
//                Button(
//                    action: {
//                        isPresented.toggle()
//                    }, label: {
//                        Image(systemName: "eye")
//                    }
//                ).sheet(
//                    // 3
//                    isPresented: $isPresented,
//                    // 4
//                    onDismiss: {
//                        print("Modal dismissed. State now: \(isPresented)")
//                    },
//                    // 5
//                    content: {
//                        Text("Completed")
//                        Text("In progress")
//                        Text("Ahead")
//                    }
//                )
            }.frame(maxWidth: .infinity,
                    minHeight: 50)
            .padding(3)
            .border(.red, width: 2)
//            .background(Color(red: 2.30, green: 0.32, blue: 0.32))
            .cornerRadius(25)
        }
    }
    func view() {
        print("view mission tree")
    }
}

//struct CheckView_Previews: PreviewProvider {
//    static var previews: some View {
//        CheckView(title:"Title", streak: 0)
//    }
//}

