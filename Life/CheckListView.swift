//
//  CheckListView.swift
//  Tips_08_04_ToDoList
//
//  Created by Steven Lipton on 8/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct CheckListView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var missions: FetchedResults<Mission>
    
    var body: some View {
        List {
            Section(header: Text("upon waking")) {
                ForEach(missions) { mission in
                    if (!mission.isCompleted && mission.isDaily && mission.category?.lowercased() == "morning") {
                        CheckView(
                            mission: mission,
                            isChecked: mission.isCompleted,
                            title: mission.name!,
                            streak: 0)
                    }
                }
            }
            Section(header: Text("Diet")) {
                ForEach(missions) { mission in
                    if (!mission.isCompleted && mission.isDaily && mission.category?.lowercased() == "diet") {
                        CheckView(
                            mission: mission,
                            isChecked: mission.isCompleted,
                            title: mission.name!,
                            streak: 0)
                    }
                }
            }
            Section(header: Text("Fitness")) {
                ForEach(missions) { mission in
                    if (!mission.isCompleted && mission.isDaily && mission.category?.lowercased() == "fitness") {
                        CheckView(
                            mission: mission,
                            isChecked: mission.isCompleted,
                            title: mission.name!,
                            streak: 0)
                    }
                }
            }
            Section(header: Text("Other")) {
                ForEach(missions) { mission in
                    if (!mission.isCompleted && mission.isDaily && mission.category?.lowercased() == "other") {
                        CheckView(
                            mission: mission,
                            isChecked: mission.isCompleted,
                            title: mission.name!,
                            streak: 0)
                    }
                }
            }
            Section(header: Text("before bed")) {
                ForEach(missions) { mission in
                    if (!mission.isCompleted && mission.isDaily && mission.category?.lowercased() == "night") {
                        CheckView(
                            mission: mission,
                            isChecked: mission.isCompleted,
                            title: mission.name!,
                            streak: 0)
                    }
                }
            }
            Button("Load data") {
                loadData()
            }
//            Button("Reset") {
//                reset()
//            }
        }.frame(height: 500).listStyle(InsetListStyle())
    }
    //        List {
    //            ForEach(checkListData) { category in
    //                Section(header: Text(category.title)) {
    //                    List(category.items) { item in
    //                        CheckView(isChecked: item.isChecked,
    //                                  title: item.title,
    //                                  streak: item.streak)
    //                    }.frame(height: 500)
    //                }
    //            }
    //            .listStyle(InsetListStyle())
    //        }
    
    func reset() {
        for mission in missions {
            if (mission.isDaily) {
                mission.isCompleted = false
            }
        }
    }
    
    func loadData() {
        
        // Morning
        
        let wakeupMission = Mission(context: moc)
        wakeupMission.id = UUID()
        wakeupMission.name = "wakeup @ 5am"
        wakeupMission.isCompleted = false
        wakeupMission.isDaily = true
        wakeupMission.category = "morning"
                
        let cinnamonMission = Mission(context: moc)
        cinnamonMission.id = UUID()
        cinnamonMission.name = "ceylon cinnamon 1 tsp"
        cinnamonMission.isCompleted = false
        cinnamonMission.isDaily = true
        cinnamonMission.category = "morning"
        
        let creatineMission = Mission(context: moc)
        creatineMission.id = UUID()
        creatineMission.name = "creatine"
        creatineMission.isCompleted = false
        creatineMission.isDaily = true
        creatineMission.category = "morning"
        
        let vitaminCMission = Mission(context: moc)
        vitaminCMission.id = UUID()
        vitaminCMission.name = "C 500mg"
        vitaminCMission.isCompleted = false
        vitaminCMission.isDaily = true
        vitaminCMission.category = "morning"
        
        let vitaminDMission = Mission(context: moc)
        vitaminDMission.id = UUID()
        vitaminDMission.name = "D-3 2,000 IU"
        vitaminDMission.isCompleted = false
        vitaminDMission.isDaily = true
        vitaminDMission.category = "morning"
        
        let epaMission = Mission(context: moc)
        epaMission.id = UUID()
        epaMission.name = "EPA 500mg with vitamin E 5mg"
        epaMission.isCompleted = false
        epaMission.isDaily = true
        epaMission.category = "morning"
        
        let zeaxanthinMission = Mission(context: moc)
        zeaxanthinMission.id = UUID()
        zeaxanthinMission.name = "zeaxanthin (20mg lutein, 4mg zeaxanthin)"
        zeaxanthinMission.isCompleted = false
        zeaxanthinMission.isDaily = true
        zeaxanthinMission.category = "morning"
        
        let zincMission = Mission(context: moc)
        zincMission.id = UUID()
        zincMission.name = "zinc 15mg"
        zincMission.isCompleted = false
        zincMission.isDaily = true
        zincMission.category = "morning"
        
        let cocoaMission = Mission(context: moc)
        cocoaMission.id = UUID()
        cocoaMission.name = "cocoa flavanols 500 mg"
        cocoaMission.isCompleted = false
        cocoaMission.isDaily = true
        cocoaMission.category = "morning"
        
        let mission47 = Mission(context: moc)
        mission47.id = UUID()
        mission47.name = "collagen peptides 20 g"
        mission47.isCompleted = false
        mission47.isDaily = true
        mission47.category = "morning"
        
        let cleasnerMission = Mission(context: moc)
        cleasnerMission.id = UUID()
        cleasnerMission.name = "facial cleanser"
        cleasnerMission.isCompleted = false
        cleasnerMission.isDaily = true
        cleasnerMission.category = "morning"
        
        let retinolMission = Mission(context: moc)
        retinolMission.id = UUID()
        retinolMission.name = "apply facial retinol"
        retinolMission.isCompleted = false
        retinolMission.isDaily = true
        retinolMission.category = "morning"
        
        let tonerMission = Mission(context: moc)
        tonerMission.id = UUID()
        tonerMission.name = "apply facial toner"
        tonerMission.isCompleted = false
        tonerMission.isDaily = true
        tonerMission.category = "morning"
        
        let mission9 = Mission(context: moc)
        mission9.id = UUID()
        mission9.name = "apply facial serum"
        mission9.isCompleted = false
        mission9.isDaily = true
        mission9.category = "morning"
        
        let mission10 = Mission(context: moc)
        mission10.id = UUID()
        mission10.name = "apply facial lotion"
        mission10.isCompleted = false
        mission10.isDaily = true
        mission10.category = "morning"
        
        let mission11 = Mission(context: moc)
        mission11.id = UUID()
        mission11.name = "apply facial oil"
        mission11.isCompleted = false
        mission11.isDaily = true
        mission11.category = "morning"
        
        let mission12 = Mission(context: moc)
        mission12.id = UUID()
        mission12.name = "eye cream"
        mission12.isCompleted = false
        mission12.isDaily = true
        mission12.category = "morning"
        
        let mission13 = Mission(context: moc)
        mission13.id = UUID()
        mission13.name = "brush tongue"
        mission13.isCompleted = false
        mission13.isDaily = true
        mission13.category = "morning"
        
        let mission14 = Mission(context: moc)
        mission14.id = UUID()
        mission14.name = "mouthwash"
        mission14.isCompleted = false
        mission14.isDaily = true
        mission14.category = "morning"
        
        // Daily diet
        
        let mission15 = Mission(context: moc)
        mission15.id = UUID()
        mission15.name = "broccoli (head+stalk), 250 grams"
        mission15.isCompleted = false
        mission15.isDaily = true
        mission15.category = "diet"
        
        let mission16 = Mission(context: moc)
        mission16.id = UUID()
        mission16.name = "shiitake or maitake mushrooms, 50 grams"
        mission16.isCompleted = false
        mission16.isDaily = true
        mission16.category = "diet"
        
        let mission17 = Mission(context: moc)
        mission17.id = UUID()
        mission17.name = "cumin, 1 Tbsp"
        mission17.isCompleted = false
        mission17.isDaily = true
        mission17.category = "diet"
        
        let mission18 = Mission(context: moc)
        mission18.id = UUID()
        mission18.name = "hemp seeds"
        mission18.isCompleted = false
        mission18.isDaily = true
        mission18.category = "diet"
        
        let mission19 = Mission(context: moc)
        mission19.id = UUID()
        mission19.name = "apple cider vinegar"
        mission19.isCompleted = false
        mission19.isDaily = true
        mission19.category = "diet"
        
        let mission20 = Mission(context: moc)
        mission20.id = UUID()
        mission20.name = "1 Tbsp of extra virgin olive oil"
        mission20.isCompleted = false
        mission20.isDaily = true
        mission20.category = "diet"
        
        let berryMission = Mission(context: moc)
        berryMission.id = UUID()
        berryMission.name = "1 cup blueberries/raspberries/strawberries (your choice)"
        berryMission.isCompleted = false
        berryMission.isDaily = true
        berryMission.category = "diet"
        
        let macadamiaMission = Mission(context: moc)
        macadamiaMission.id = UUID()
        macadamiaMission.name = "3 Tbsp ground macadamia nuts"
        macadamiaMission.isCompleted = false
        macadamiaMission.isDaily = true
        macadamiaMission.category = "diet"
        
        let walnutMission = Mission(context: moc)
        walnutMission.id = UUID()
        walnutMission.name = "2 tsp of ground walnuts"
        walnutMission.isCompleted = false
        walnutMission.isDaily = true
        walnutMission.category = "diet"
        
        let macadamiaNutMilkMission = Mission(context: moc)
        macadamiaNutMilkMission.id = UUID()
        macadamiaNutMilkMission.name = "50-100 mL macadamia nut milk"
        macadamiaNutMilkMission.isCompleted = false
        macadamiaNutMilkMission.isDaily = true
        macadamiaNutMilkMission.category = "diet"
        
        let pomegranateMission = Mission(context: moc)
        pomegranateMission.id = UUID()
        pomegranateMission.name = "2 oz freshly squeezed pomegranate juice"
        pomegranateMission.isCompleted = false
        pomegranateMission.isDaily = true
        pomegranateMission.category = "diet"
        
        let potatoMission = Mission(context: moc)
        potatoMission.id = UUID()
        potatoMission.name = "sweet potato 300 grams (@ don quijote)"
        potatoMission.isCompleted = false
        potatoMission.isDaily = true
        potatoMission.category = "diet"
        
        let mission63 = Mission(context: moc)
        mission63.id = UUID()
        mission63.name = "3 cherries"
        mission63.isCompleted = false
        mission63.isDaily = true
        mission63.category = "diet"
        
        let mission64 = Mission(context: moc)
        mission64.id = UUID()
        mission64.name = "black lentils"
        mission64.isCompleted = false
        mission64.isDaily = true
        mission64.category = "diet"
        
        let tomatoMission = Mission(context: moc)
        tomatoMission.id = UUID()
        tomatoMission.name = "grape tomatoes 12"
        tomatoMission.isCompleted = false
        tomatoMission.isDaily = true
        tomatoMission.category = "diet"
        
        let avocadoMission = Mission(context: moc)
        avocadoMission.id = UUID()
        avocadoMission.name = "avocado ½ (natural Lawson)"
        avocadoMission.isCompleted = false
        avocadoMission.isDaily = true
        avocadoMission.category = "diet"
        
        let radishMission = Mission(context: moc)
        radishMission.id = UUID()
        radishMission.name = "4 radishes"
        radishMission.isCompleted = false
        radishMission.isDaily = true
        radishMission.category = "diet"
        
        let jalapenoMission = Mission(context: moc)
        jalapenoMission.id = UUID()
        jalapenoMission.name = "1 large jalapeno pepper"
        jalapenoMission.isCompleted = false
        jalapenoMission.isDaily = true
        jalapenoMission.category = "diet"
        
        let sunflowerMission = Mission(context: moc)
        sunflowerMission.id = UUID()
        sunflowerMission.name = "1 tsp sunflower lecithin"
        sunflowerMission.isCompleted = false
        sunflowerMission.isDaily = true
        sunflowerMission.category = "diet"
        
        let mission65 = Mission(context: moc)
        mission65.id = UUID()
        mission65.name = "cauliflower"
        mission65.isCompleted = false
        mission65.isDaily = true
        mission65.category = "diet"
        
        let lemonMission = Mission(context: moc)
        lemonMission.id = UUID()
        lemonMission.name = "1 whole lemon"
        lemonMission.isCompleted = false
        lemonMission.isDaily = true
        lemonMission.category = "diet"
        
        let mission21 = Mission(context: moc)
        mission21.id = UUID()
        mission21.name = "C 500mg (2nd)"
        mission21.isCompleted = false
        mission21.isDaily = true
        mission21.category = "diet"
        
        let mission22 = Mission(context: moc)
        mission22.id = UUID()
        mission22.name = "EPA 500mg (2nd)"
        mission22.isCompleted = false
        mission22.isDaily = true
        mission22.category = "diet"
        
        let mission23 = Mission(context: moc)
        mission23.id = UUID()
        mission23.name = "turmeric 1g"
        mission23.isCompleted = false
        mission23.isDaily = true
        mission23.category = "diet"
        
        let mission24 = Mission(context: moc)
        mission24.id = UUID()
        mission24.name = "1 Tbsp of extra virgin olive oil (2nd)"
        mission24.isCompleted = false
        mission24.isDaily = true
        mission24.category = "diet"
        
        let mission25 = Mission(context: moc)
        mission25.id = UUID()
        mission25.name = "lime, 1 (natural Lawson)"
        mission25.isCompleted = false
        mission25.isDaily = true
        mission25.category = "diet"
        
        let garlicMission = Mission(context: moc)
        garlicMission.id = UUID()
        garlicMission.name = "garlic, 1 clove (a piece)"
        garlicMission.isCompleted = false
        garlicMission.isDaily = true
        garlicMission.category = "diet"
                
        // fitness
        
        let workoutMission = Mission(context: moc)
        workoutMission.id = UUID()
        workoutMission.name = "workout"
        workoutMission.isCompleted = false
        workoutMission.isDaily = true
        workoutMission.category = "fitness"
        
        let mission28 = Mission(context: moc)
        mission28.id = UUID()
        mission28.name = "15 min stretch on wall"
        mission28.isCompleted = false
        mission28.isDaily = true
        mission28.category = "fitness"
        
        // Daily ect.
                
        let mission31 = Mission(context: moc)
        mission31.id = UUID()
        mission31.name = "read chapter of book"
        mission31.isCompleted = false
        mission31.isDaily = true
        mission31.category = "other"
        
        let brushTeethMission = Mission(context: moc)
        brushTeethMission.id = UUID()
        brushTeethMission.name = "brush teeth"
        brushTeethMission.isCompleted = false
        brushTeethMission.isDaily = true
        brushTeethMission.category = "other"
        
        let mission32 = Mission(context: moc)
        mission32.id = UUID()
        mission32.name = "pass Japanese quiz"
        mission32.isCompleted = false
        mission32.isDaily = true
        mission32.category = "other"
        
        let koreanLanguageMission = Mission(context: moc)
        koreanLanguageMission.id = UUID()
        koreanLanguageMission.name = "pass Korean quiz"
        koreanLanguageMission.isCompleted = false
        koreanLanguageMission.isDaily = true
        koreanLanguageMission.category = "other"
        
        let vietnameseLanguageMission = Mission(context: moc)
        vietnameseLanguageMission.id = UUID()
        vietnameseLanguageMission.name = "pass Vietnamese quiz"
        vietnameseLanguageMission.isCompleted = false
        vietnameseLanguageMission.isDaily = true
        vietnameseLanguageMission.category = "other"
        
        let mission45 = Mission(context: moc)
        mission45.id = UUID()
        mission45.name = "post TikTok video"
        mission45.isCompleted = false
        mission45.isDaily = true
        mission45.category = "other"
        
        let girlMission = Mission(context: moc)
        girlMission.id = UUID()
        girlMission.name = "talk to hot girl"
        girlMission.isCompleted = false
        girlMission.isDaily = true
        girlMission.category = "other"
        
        // Daily night
        
        let mission41 = Mission(context: moc)
        mission41.id = UUID()
        mission41.name = "brush tongue"
        mission41.isCompleted = false
        mission41.isDaily = true
        mission41.category = "night"
        
        let mission42 = Mission(context: moc)
        mission42.id = UUID()
        mission42.name = "facial cleanser"
        mission42.isCompleted = false
        mission42.isDaily = true
        mission42.category = "night"
        
        let mission43 = Mission(context: moc)
        mission43.id = UUID()
        mission43.name = "mouthwash"
        mission43.isCompleted = false
        mission43.isDaily = true
        mission43.category = "night"
        
        let mission44 = Mission(context: moc)
        mission44.id = UUID()
        mission44.name = "brush teeth"
        mission44.isCompleted = false
        mission44.isDaily = true
        mission44.category = "night"
                
        // One Time
        
        let mission48 = Mission(context: moc)
        mission48.id = UUID()
        mission48.name = "find remote server for script"
        mission48.isCompleted = false
        mission48.isDaily = false
        mission48.category = "Coding"
        
        let mission49 = Mission(context: moc)
        mission49.id = UUID()
        mission49.name = "release app to App Store"
        mission49.isCompleted = false
        mission49.isDaily = false
        mission49.category = "Coding"
        
        let mission50 = Mission(context: moc)
        mission50.id = UUID()
        mission50.name = "read entire Japanese book"
        mission50.isCompleted = false
        mission50.isDaily = false
        mission50.category = "Speech"
        
        let vietnameseMission = Mission(context: moc)
        vietnameseMission.id = UUID()
        vietnameseMission.name = "read entire Vietnamese book"
        vietnameseMission.isCompleted = false
        vietnameseMission.isDaily = false
        vietnameseMission.category = "Speech"
        
        let mission51 = Mission(context: moc)
        mission51.id = UUID()
        mission51.name = "pass JLPT N5 test"
        mission51.isCompleted = false
        mission51.isDaily = false
        mission51.category = "Speech"
        
        let mission52 = Mission(context: moc)
        mission52.id = UUID()
        mission52.name = "do split"
        mission52.isCompleted = false
        mission52.isDaily = false
        mission52.category = "Health"
        
        let mission53 = Mission(context: moc)
        mission53.id = UUID()
        mission53.name = "touch toes while standing"
        mission53.isCompleted = false
        mission53.isDaily = false
        mission53.category = "Health"
        
        let mission54 = Mission(context: moc)
        mission54.id = UUID()
        mission54.name = "become eligible for Youtube creator fund"
        mission54.isCompleted = false
        mission54.isDaily = false
        mission54.category = "Money"
        mission54.percentile = "0.25%"
        
        let mission55 = Mission(context: moc)
        mission55.id = UUID()
        mission55.name = "become eligible for TikTok creator fund"
        mission55.isCompleted = false
        mission55.isDaily = false
        mission55.category = "Money"
        
        let mission56 = Mission(context: moc)
        mission56.id = UUID()
        mission56.name = "obtain Japan visa"
        mission56.isCompleted = false
        mission56.isDaily = false
        mission56.category = "Power"
        mission56.percentile = "1.6"
//        mission56.dependant = Dependant()
        
        let mission57 = Mission(context: moc)
        mission57.id = UUID()
        mission57.name = "obtain Korean visa"
        mission57.isCompleted = false
        mission57.isDaily = false
        mission57.category = "Power"
        
        let mission58 = Mission(context: moc)
        mission58.id = UUID()
        mission58.name = "use all dating apps likes"
        mission58.isCompleted = false
        mission58.isDaily = true
        mission58.category = "other"
        
        let mission59 = Mission(context: moc)
        mission59.id = UUID()
        mission59.name = "obtain 1000 Instagram followers"
        mission59.isCompleted = false
        mission59.isDaily = false
        mission59.category = "Influence"
        
        let mission60 = Mission(context: moc)
        mission60.id = UUID()
        mission60.name = "become millionaire in net worth"
        mission60.isCompleted = false
        mission60.isDaily = false
        mission60.category = "Money"
        mission60.percentile = "1.1%"
        
        let mission61 = Mission(context: moc)
        mission61.id = UUID()
        mission61.name = "publish song to Spotify"
        mission61.isCompleted = false
        mission61.isDaily = false
        mission61.category = "DJing"
        
        let mission62 = Mission(context: moc)
        mission62.id = UUID()
        mission62.name = "able to do 25 push ups in a row"
        mission62.isCompleted = true
        mission62.isDaily = false
        mission62.category = "Strength"
                        
        let mission66 = Mission(context: moc)
        mission66.id = UUID()
        mission66.name = "obtain family office"
        mission66.isCompleted = false
        mission66.isDaily = false
        mission66.category = "Money"        
        
        let mission67 = Mission(context: moc)
        mission67.id = UUID()
        mission67.name = "Participate in world championship"
        mission67.isCompleted = false
        mission67.isDaily = false
        mission67.category = "Bouldering"
        
        let mission68 = Mission(context: moc)
        mission68.id = UUID()
        mission68.name = "played extra in movie"
        mission68.isCompleted = false
        mission68.isDaily = false
        mission68.category = "Acting"
        
        let mission69 = Mission(context: moc)
        mission69.id = UUID()
        mission69.name = "played main character in movie"
        mission69.isCompleted = false
        mission69.isDaily = false
        mission69.category = "Acting"
        
        let mission70 = Mission(context: moc)
        mission70.id = UUID()
        mission70.name = "obtain real estate license"
        mission70.isCompleted = false
        mission70.isDaily = false
        mission70.category = "Real Estate"
        
        let mission71 = Mission(context: moc)
        mission71.id = UUID()
        mission71.name = "sold first house"
        mission71.isCompleted = false
        mission71.isDaily = false
        mission71.category = "Real Estate"
        
        let mission72 = Mission(context: moc)
        mission72.id = UUID()
        mission72.name = "able to do 50 push ups in a row"
        mission72.isCompleted = false
        mission72.isDaily = false
        mission72.category = "Strength"
        
        let mission73 = Mission(context: moc)
        mission73.id = UUID()
        mission73.name = "become verified artist on Youtube"
        mission73.isCompleted = false
        mission73.isDaily = false
        mission73.category = "DJing"
        
        let mission74 = Mission(context: moc)
        mission74.id = UUID()
        mission74.name = "read entire Korean book"
        mission74.isCompleted = false
        mission74.isDaily = false
        mission74.category = "Speech"
        
        let mission75 = Mission(context: moc)
        mission75.id = UUID()
        mission75.name = "able to do flip"
        mission75.isCompleted = false
        mission75.isDaily = false
        mission75.category = "Strength"
        
        let retireMomMission = Mission(context: moc)
        retireMomMission.id = UUID()
        retireMomMission.name = "retire mom"
        retireMomMission.isCompleted = false
        retireMomMission.isDaily = false
        retireMomMission.category = "Money"
        
        let podcastMission = Mission(context: moc)
        podcastMission.id = UUID()
        podcastMission.name = "own podcast"
        podcastMission.isCompleted = false
        podcastMission.isDaily = false
        podcastMission.category = "Influence"
        
        let cryptoMission = Mission(context: moc)
        cryptoMission.id = UUID()
        cryptoMission.name = "create coin"
        cryptoMission.isCompleted = false
        cryptoMission.isDaily = false
        cryptoMission.category = "Crypto"
        
        let hostMission = Mission(context: moc)
        hostMission.id = UUID()
        hostMission.name = "become host for client"
        hostMission.isCompleted = false
        hostMission.isDaily = false
        hostMission.category = "Charisma"
        
        let rentBFMission = Mission(context: moc)
        rentBFMission.id = UUID()
        rentBFMission.name = "become renta BF for client"
        rentBFMission.isCompleted = false
        rentBFMission.isDaily = false
        rentBFMission.category = "Charisma"
        
        let bookMission = Mission(context: moc)
        bookMission.id = UUID()
        bookMission.name = "publish book"
        bookMission.isCompleted = false
        bookMission.isDaily = false
        bookMission.category = "Intelligence"
        
        let twitchTier1SubMission = Mission(context: moc)
        twitchTier1SubMission.id = UUID()
        twitchTier1SubMission.name = "gain Twitch tier 1 sub"
        twitchTier1SubMission.isCompleted = false
        twitchTier1SubMission.isDaily = false
        twitchTier1SubMission.category = "Charisma"
        
        let twitchTier2SubMission = Mission(context: moc)
        twitchTier2SubMission.id = UUID()
        twitchTier2SubMission.name = "gain Twitch tier 2 sub"
        twitchTier2SubMission.isCompleted = false
        twitchTier2SubMission.isDaily = false
        twitchTier2SubMission.category = "Charisma"
        
        let twitchTier3SubMission = Mission(context: moc)
        twitchTier3SubMission.id = UUID()
        twitchTier3SubMission.name = "gain Twitch tier 3 sub"
        twitchTier3SubMission.isCompleted = false
        twitchTier3SubMission.isDaily = false
        twitchTier3SubMission.category = "Charisma"
        
        // category should be array
        
        try? moc.save()
        
        //        let mission29 = Mission(context: moc)
        //        mission29.id = UUID()
        //        mission29.name = "5 min split stretch left leg"
        //        mission29.isCompleted = false
        //        mission29.isDaily = true
        //        mission29.category = "fitness"
        //
        //        let mission30 = Mission(context: moc)
        //        mission30.id = UUID()
        //        mission30.name = "5 min split stretch right leg"
        //        mission30.isCompleted = false
        //        mission30.isDaily = true
        //        mission30.category = "fitness"
        
        //        let mission46 = Mission(context: moc)
        //        mission46.id = UUID()
        //        mission46.name = "post Pinterest"
        //        mission46.isCompleted = false
        //        mission46.isDaily = true
        //        mission46.category = "other"
    }
}

struct CheckListView3: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var missions: FetchedResults<Mission>
    
    var body: some View {
        List {
            Section(header: Text("Daily")) {
                ForEach(missions) { mission in
                    if (mission.isCompleted && mission.isDaily) {
                        CheckView(
                            mission: mission,
                            isChecked: mission.isCompleted,
                            title: mission.name!,
                            streak: 0)
                    }
                }
            }
//            Section(header: Text("Ect.")) {
//                ForEach(missions) { mission in
//                    if (mission.isCompleted && !mission.isDaily) {
//                        CheckView(
//                            mission: mission,
//                            isChecked: mission.isCompleted,
//                            title: mission.name!,
//                            streak: 0)
//                    }
//                }
//            }
        }.frame(height: 500).listStyle(InsetListStyle())
    }
    
}

#if DEBUG
struct CheckListView_Previews: PreviewProvider {
    static var previews: some View {
        CheckListView()
    }
}
#endif
