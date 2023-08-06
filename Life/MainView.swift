//
//  MainView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/25/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var showingStat: Bool = false
    @State var showingItem: Bool = false
    @State var showingWellness: Bool = false
    @State var showingFinance: Bool = false
    @State var showingMemberships: Bool = false
    @State var showingBackpack: Bool = false
    
    @State private var stat: Stat = Stat(name: "",
                                         achievements: [],
                                         missions: [],
                                         emoji: "",
                                         isCore: false,
                                         type: "special"
    )
    
    @State private var item: Item = Item(name: "",
                                         emoji: "",
                                         description: "")
    
    @State private var tabSelection: Int
    @State private var statSelectedName = ""
    @State private var stats: Array<Stat>
    
    init(showingStat: Bool,
         stat: Stat,
         tabSelection: Int = 1,
         stats: Array<Stat>) {
        self.showingStat = showingStat
        self.stat = stat
        self.tabSelection = tabSelection
        self.stats = stats
    }
    
    var body: some View {
        if showingStat {
            //            StatView(stat: $stat,
            //                     showingStat: $showingStat,
            //                     stats: $stats,
            //                     additionalDesciptiopn: DescriptionView())
            StatView(stat: $stat,
                     showingStat: $showingStat)
        } else if showingItem {
            ItemView(item: $item,
                     showingItem: $showingItem)
        } else if showingWellness{
            WellnessView(showingWellness: $showingWellness)
        } else if showingFinance {
            FinanceView(showingFinance: $showingFinance)
        } else if showingMemberships {
            MembershipsView(showingMemberships: $showingMemberships)
        } else if showingBackpack {
            InventoryView(
                item: $item,
                showingItem: $showingItem,
                showingBackpack: $showingBackpack
            )
        } else {
            TabView(selection: $tabSelection) {
                CharacterView(showingWellness: $showingWellness,
                              showingFinance: $showingFinance,
                              showingMemberships: $showingMemberships,
                              showingBackpack: $showingBackpack
                )
                .tabItem {
                    Label {
                        Text("Player")
                            .bold()
                    } icon: {
                        Image(systemName: "person")
                            .symbolVariant(.fill)
                    }
                }.tag(0)
                StatsView(showingStat: $showingStat,
                          stat: $stat,
                          tabSelection: $tabSelection,
                          stats: $stats,
                          statSelectedName: $statSelectedName)
                .tabItem {
                    Label("Stats", systemImage: "list.dash")
                }.tag(1)
                MissionsView()
                    .tabItem {
                        Label {
                            Text("Missions")
                                .bold()
                        } icon: {
                            Image(systemName: "star")
                                .symbolVariant(.fill)
                        }
                    }.tag(2)
                //                CheckPointView()
                //                    .tabItem {
                //                        Label("Check Point", systemImage: "flag")
                //                    }.tag(3)
                //                DevilView()
                //                    .tabItem {
                //                        Label {
                //                            Text("Bosses")
                //                                .bold()
                //                        } icon: {
                //                            Image(systemName: "die.face.1")
                //                                .symbolVariant(.fill)
                //                        }
                //                    }.tag(4)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(showingStat: false,
                 stat: Stat(name: "HP",
                            achievements: [],
                            missions: [],
                            emoji: "",
                            isCore: false,
                            type: "special"),
                 stats: [])
    }
}
