//
//  Stat.swift
//  Life
//
//  Created by Nathan Nguyen on 12/26/22.
//

import Foundation
import SwiftUI

struct Stat: Identifiable {
    var id: String {
        return name
    }
    var name: String
    var score = 0
    var achievements: Array<Achievement>
    var missions: Array<String>
    var emoji: String
    var isCore: Bool
    var type: String
    var leaders: Array<String>
    
//    @Environment(\.managedObjectContext) var moc
//    @FetchRequest(sortDescriptors: []) var quests: FetchedResults<Mission>
    
    init(name: String,
         achievements: Array<Achievement>,
         missions: Array<String>,
         emoji: String,
         isCore: Bool,
         type: String,
         leaders: Array<String> = []) {
        self.name = name
        self.achievements = achievements
        self.isCore = isCore
        self.type = type
        
//        var completed = 0.0
//        for achievement in achievements {
//            if achievement.isComplete == true {
//                completed += 1
//            }
//        }
//        if completed == 0 {
//            self.score = 0
//        } else {
//            var totalScore = Double(completed/Double(achievements.count)) * 100
//            totalScore = ceil(totalScore)
//            self.score = Int(totalScore)
//        }
        
//        if ((achievements.count + achievementsUnlocked.count) != 0 && achievementsLocked.count != 0) {
//            var totalScore = Double((Double(achievementsUnlocked.count) / (Double(achievementsLocked.count) + Double(achievementsUnlocked.count)))) * 100
//            totalScore = ceil(totalScore)
//            self.score = Int(totalScore)
//        } else {
//            self.score = 0
//        }
        
        self.missions = missions
        self.emoji = emoji
        
        self.leaders = leaders
    }
    
//    func completed() {
//        var completed = 0.0
//        for m in quests {
//            if m.category == self.type {
//                if m.isCompleted == true {
//                    completed += 1
//                }
//            }
//        }
//    }
}
