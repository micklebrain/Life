//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct MissionView: UIViewControllerRepresentable {

    typealias UIViewControllerType = ChecklistViewController
    
    func makeUIViewController(context: Context) -> ChecklistViewController {
            let vc = ChecklistViewController()
            vc.checklist = Checklist(name: "Missions")
            var water = ChecklistItem()
            water.text = "water"
            vc.checklist.items.append(water)
            // Do some configurations here if needed.
            return vc
        }
        
        func updateUIViewController(_ uiViewController: ChecklistViewController, context: Context) {
            // Updates the state of the specified view controller with new information from SwiftUI.
        }

}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        MissionView()
    }
}
