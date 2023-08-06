//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct StatView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var missions: FetchedResults<Mission>
    
    @Binding var stat: Stat
    @Binding var showingStat: Bool
    
    var body: some View {
        Text("Leaders")
        ForEach(stat.leaders, id: \.self) { leader in
            LeaderRowView(person: Person(name: leader))
        }
        
        ForEach(missions) { mission in
            if mission.category == stat.name && !mission.isDaily {
                if (mission.isCompleted) {
                    Text(mission.name!).modifier(TitleGreen()).background(.green)
                } else {
                    Text(mission.name!).modifier(Title())
                }
            }
        }
        Button("Back", action: {showingStat = false})
    }
}

struct LeaderRowView: View {
    var person: Person

    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(person.name)
                .foregroundColor(.primary)
                .font(.headline)
            .foregroundColor(.secondary)
            .font(.subheadline)
        }
    }
}
struct Person: Identifiable {
     let id = UUID()
     var name: String
 }

//struct StatView: View {
//
//    @Binding var stat: Stat
//    @Binding var showingStat: Bool
//    @Binding var stats: Array<Stat>
//
//    var additionalDesciptiopn: any View
//
//    var body: some View {
//
//        ScrollView {
//            Text(stat.name)
//            Text(String(stat.score))
//            Text("Recurring missions").padding()
//            ForEach(stat.missions, id: \.self) {
//                Text($0)
//            }
//            Text("Achievements locked").padding()
//            ForEach(stat.achievements, id: \.name) { achievement in
//                if achievement.isComplete == false {
//                    if isAvailable(achievements: achievement.dependant) {
//                        Button(achievement.name, action: {addAchievementUnlocked(achievement: achievement.name)})
//                            .foregroundColor(.black)
//                            .padding()
//                            .border(Color.black, width: 2)
//                    }
//                }
//            }
//            Text("Achievements unlocked").padding()
//            ForEach(stat.achievements, id: \.name) { achievement in
//                if achievement.isComplete == true {
//                    Button(achievement.name, action: {removeAchievementUnlocked(achievement: achievement.name)})
//                        .foregroundColor(.green)
//                        .padding()
//                        .border(Color.green, width: 2)
//
//                }
//            }
////            additionalDesciptiopn
//            Button("Back", action: {showingStat = false})
//        }
//    }
//
//    func isAvailable(achievements: Array<String>) -> Bool {
//        for a in achievements {
//            for achievement in stat.achievements {
//                if a == achievement.name {
//                    if achievement.isComplete == false {
//                        return false
//                    }
//                }
//            }
//        }
//        return true
//    }
//
//    func removeAchievementUnlocked(achievement: String) {
//        for index in stats.indices {
//            if stats[index].name == stat.name {
//                for (index2, a) in stats[index].achievements.enumerated() {
//                    if (a.name == achievement) {
//                        stats[index].achievements[index2].isComplete = false
//                    }
//                }
//            }
//        }
//
//        stat.achievements.removeAll{$0.name == achievement}
//        stat.achievements.append(Achievement(name: achievement, isComplete: false, dependant: []))
//    }
//
//    func addAchievementUnlocked(achievement: String) {
//        for index in stats.indices {
//            for (index2, a) in stats[index].achievements.enumerated() {
//                if (a.name == achievement) {
//                    stats[index].achievements[index2].isComplete = true
//                }
//            }
//        }
//
//        stat.achievements.removeAll{$0.name == achievement}
//        stat.achievements.append(Achievement(name: achievement, isComplete: true, dependant: []))
//    }
//}


//struct StatView_Previews: PreviewProvider {
//    static var previews: some View {
//        StatView(stat: Stat(name: "Heart", amount: 50, achievements: []), showingStat: false)
//    }
//}

