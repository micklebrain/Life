//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct CheckPointView: View {
    
    var publishedApps = 0
    var songs = 0
    var movies = 0
    
    var body: some View {
        VStack {
            Text("Checkpoint")
            Text("31 daily missions finished yesterday")
        }
    }
}

struct CheckPointView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
