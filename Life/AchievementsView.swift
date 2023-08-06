//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct AchievementsView: View {
    
    var publishedApps = 0
    var songs = 0
    var movies = 0
    
    var body: some View {
        VStack {
            Text("Achievements")
            Text("Unlock your potential")
            VStack {
                Text("Proffesional racer 🏎")
            }
            VStack {
                Text("Singer 🎤")
                Text("Songs released: " + String(songs))
            }
            VStack {
                Text("Movie Star 🎬")
                Text("Movies starred in: " + String(movies))
                Text("iOS Apps published: " + String(publishedApps))
                Text("World class DJ 📀")
            }
            VStack {
                Text("Professional Futbol player ⚽️")
                Text("Mission: Get on Highschool Team")
                Text("Mission: Get on club team")
            }
            Text("President of USA")
            Text("Become doctor")
        }
    }
}

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
