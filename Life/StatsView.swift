//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct StatsView: View {
    
    @Binding var showingStat: Bool
    @Binding var stat: Stat
    @Binding var tabSelection: Int
    @Binding var stats: Array<Stat>
    @Binding var statSelectedName: String
        
    var count = 0
    
    var body: some View {
        let columns = [
            GridItem(.adaptive(minimum: 110))
        ]
        
        ScrollView {
            Text("Core").padding()
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(stats, id: \.id) { stat in                    
                    if stat.type == "core" {
                        Button("\(stat.emoji) \n \(stat.name)", action: {showStat(selectedStat: stat)})
//                        Button("\(stat.emoji) \n \(stat.name)" + "\n" + String(stat.score), action: {showStat(selectedStat: stat)})
                    }
                }
            }
            .padding(.horizontal)
            Text("Money").padding()
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(stats, id: \.id) { stat in
                    if stat.type == "money" {
                        Button("\(stat.emoji) \n \(stat.name)", action: {showStat(selectedStat: stat)})
                    }
                }
            }
            Text("Special").padding()
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(stats, id: \.id) { stat in
                    if stat.type == "special" {
                        Button("\(stat.emoji) \n \(stat.name)", action: {showStat(selectedStat: stat)})
                    }
                }
            }
            .padding(.horizontal)
            Text("Sport").padding()
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(stats, id: \.id) { stat in
                    if stat.type == "sport" {
                        Button("\(stat.emoji) \n \(stat.name)" + "\n" + String(stat.score), action: {showStat(selectedStat: stat)})
                    }
                }
            }
            .padding(.horizontal)
        }
        
    }
    
    func showStat(selectedStat: Stat) {
        showingStat = true
        stat = selectedStat
        tabSelection = 2
    }
}

//struct StatsView_Previews: PreviewProvider {
//    static var previews: some View {
//        StatsView(showingStat: false)
//    }
//}
