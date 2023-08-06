//
//  LifeApp.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI
import SceneKit

@main
struct LifeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject private var dataController = DataController()
    
    // Core stats
    
    @State var healthStat: Stat = Stat(name: "Health",
                                       achievements: [
                                        Achievement(name: "dosn't wears glasses", isComplete: true, dependant: []),
                                        Achievement(name: "healthy hand nails", isComplete: true, dependant: []),
                                        Achievement(name: "healthy height to body fat: 118-148", isComplete: true, dependant: []),
                                        Achievement(name: "healthy body fat percentage: ?%", isComplete: true, dependant: []),
                                        Achievement(name: "not diabetic", isComplete: true, dependant: []),
                                        Achievement(name: "dosn't masturbate", isComplete: true, dependant: []),
                                        Achievement(name: "dosn't play League of Legends", isComplete: true, dependant: []),
                                        Achievement(name: "dosn't blackout from drinking", isComplete: true, dependant: []),
                                        Achievement(name: "dosn't drink coffee", isComplete: true, dependant: []),
                                        Achievement(name: "not gasy", isComplete: true, dependant: []),
                                        Achievement(name: "non-Itchy body", isComplete: false, dependant: []),
                                        Achievement(name: "not bald", isComplete: true, dependant: []),
                                        Achievement(name: "can touch toes", isComplete: false, dependant: []),
                                        Achievement(name: "can do split", isComplete: false, dependant: []),
                                        Achievement(name: "healthy foot nails", isComplete: false, dependant: []),
                                        Achievement(name: "pearl white teeth", isComplete: false, dependant: []),
                                        Achievement(name: "straight teeth", isComplete: false, dependant: []),
                                        Achievement(name: "dosn't have lower back pain", isComplete: false, dependant: []),
                                        Achievement(name: "dosn't have healing scars", isComplete: false, dependant: [])
                                       ],
                                       missions: [
                                        "stetch daily",
                                        "scrub body daily",
                                        "use teeth whitening",
                                        "get veneers",
                                       ],
                                       emoji: "❤️",
                                       isCore: true,
                                       type: "core",
                                       leaders: ["Bryan Johnson"]
    )
    
    @State var strengthStat = Stat(name: "Strength",
                                   achievements: [
                                    Achievement(name: "can do a push up", isComplete: true, dependant: []),
                                    Achievement(name: "can do 25 push ups in a row", isComplete: false, dependant: []),
                                    Achievement(name: "can do 1 fully extended pull up", isComplete: true, dependant: []),
                                    Achievement(name: "can hold plank for 1 minute", isComplete: true, dependant: []),
                                    Achievement(name: "can hold plank for 2 minutes", isComplete: false, dependant: []),
                                    Achievement(name: "can do 10 fully extended pull ups in a row", isComplete: false, dependant: []),
                                    Achievement(name: "can do 25 fully extended pull ups in a row", isComplete: false, dependant: [])
                                   ],
                                   missions: [
                                    "workout daily",
                                    "do planks daily"
                                   ],
                                   emoji: "💪",
                                   isCore: true,
                                   type: "core"
    )
    
    @State var speechStat = Stat(name: "Speech",
                                 achievements: [
                                    Achievement(name: "talk in front of 10 people", isComplete: true, dependant: []),
                                    Achievement(name: "bilingual", isComplete: true, dependant: []),
                                    Achievement(name: "talk in front of 100 people", isComplete: false, dependant: []),
                                    Achievement(name: "talk in front of 1000 people", isComplete: false, dependant: []),
                                    Achievement(name: "perform Ted talk", isComplete: false, dependant: []),
                                    Achievement(name: "trilingual", isComplete: false, dependant: []),
                                    Achievement(name: "quadrilingual", isComplete: false, dependant: []),
                                    Achievement(name: "participate in public speaking world championship", isComplete: false, dependant: []),
                                    Achievement(name: "win public speaking world championship", isComplete: false, dependant: [])
                                 ],
                                 missions: [
                                    "vlog daily",
                                    "practice on Drops app daily",
                                 ],
                                 emoji: "💬",
                                 isCore: true,
                                 type: "core"
    )
    
    @State var charismaStat = Stat(name: "Charisma",
                                   achievements: [
                                    Achievement(name: "had girlfriend", isComplete: true, dependant: []),
                                    Achievement(name: "lost virginity", isComplete: true, dependant: []),
                                    Achievement(name: "has girlfriend", isComplete: false, dependant: []),
                                    Achievement(name: "has wife", isComplete: false, dependant: []),
                                    Achievement(name: "has kids", isComplete: false, dependant: []),
                                    Achievement(name: "is followed by a verified person on Instagram", isComplete: false, dependant: []),
                                    Achievement(name: "chosen as best man for a wedding", isComplete: false, dependant: []),
                                    Achievement(name: "pickup girl off Instagram", isComplete: false, dependant: []),
                                   ],
                                   missions: [
                                    "go on dates weekly",
                                    "get a date off Instagram"
                                   ],
                                   emoji: "🎙",
                                   isCore: true,
                                   type: "core",
                                   leaders: ["Roland (japanese host)"]
    )
        
    @State var intelligenceStat = Stat(name: "Intelligence",
                                       achievements: [
                                        Achievement(name: "obtain highschool degree", isComplete: true, dependant: []),
                                        Achievement(name: "obtain college degree", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 200 IQ score", isComplete: false, dependant: [])
                                       ],
                                       missions: [
                                        "enroll into college"
                                       ],
                                       emoji: "🧠",
                                       isCore: true,
                                       type: "core"
    )
    
    // Money stats
    
    @State var financeStat = Stat(name: "Money",
                                  achievements: [
                                    Achievement(name: "not in debt", isComplete: true, dependant: []),
                                    Achievement(name: "has net worth over 100k", isComplete: true, dependant: []),
                                    Achievement(name: "retired parents", isComplete: false, dependant: []),
                                    Achievement(name: "obtained 100k in cash", isComplete: false, dependant: []),
                                    Achievement(name: "become millionaire in net worth", isComplete: false, dependant: []),
                                    Achievement(name: "net worth 50% percentile in USA 2020", isComplete: false, dependant: []),
                                    Achievement(name: "millionaire in multiple currencies", isComplete: false, dependant: []),
                                    Achievement(name: "own properties in multiple states", isComplete: false, dependant: []),
                                    Achievement(name: "own properties in multiple countries", isComplete: false, dependant: [])
                                  ],
                                  missions: ["get 2 sources of income"],
                                  emoji: "💵",
                                  isCore: true,
                                  type: "money",
                                  leaders: ["Elon Musk", "Bernard Arnault", "Jeff Bezos"]
    )
    
    @State var realEstateStat = Stat(name: "Real Estate",
                                     achievements: [
                                        Achievement(name: "obtain real estate license", isComplete: false, dependant: []),
                                        Achievement(name: "sold first house", isComplete: false, dependant: ["got real estate license"])
                                     ],
                                     missions: [
                                     ],
                                     emoji: "🏠",
                                     isCore: false,
                                     type: "money",
                                     leaders: ["Grant Cardone"]
    )
    
    @State var copyrightStat = Stat(name: "Copyright",
                                    achievements: [
                                    ],
                                    missions: [
                                    ],
                                    emoji: "✍️",
                                    isCore: false,
                                    type: "money",
                                    leaders: ["Joe Coleman", "Laurence Blume", "Brian Clark"]
    )
    
    // special stats
    
    @State var djStat = Stat(name: "DJing",
                             achievements: [
                                Achievement(name: "release song to YouTube", isComplete: true, dependant: []),
                                Achievement(name: "get over 100 views for released song on YouTube",
                                            isComplete: false,
                                            dependant: []),
                                Achievement(name: "get over 1000 views for released song on YouTube",
                                            isComplete: false,
                                            dependant: ["get over 100 views for released song on YouTube"]),
                                Achievement(name: "get over 100000 views for released song on YouTube",
                                            isComplete: false,
                                            dependant: ["get over 1000 views for released song on YouTube"]),
                                Achievement(name: "release song to Sound Cloud", isComplete: true, dependant: []),
                                Achievement(name: "get over 100 views for released song on SoundCloud",
                                            isComplete: false,
                                            dependant: []),
                                Achievement(name: "get over 1000 views for released song on SoundCloud",
                                            isComplete: false,
                                            dependant: ["get over 100 views for released song on SoundCloud"]),
                                Achievement(name: "get over 100000 views for released song on SoundCloud",
                                            isComplete: false,
                                            dependant: ["get over 1000 views for released song on SoundCloud"]),
                                Achievement(name: "release song to Spotify", isComplete: false, dependant: [])
                             ],
                             missions: [
                                "use Ableton Live make song"
                             ],
                             emoji: "🎧",
                             isCore: false,
                             type: "special",
                             leaders: ["Martin Garrix", "David Guetta", "Dimitri Vegas & Like Miake"]
    )
    
    @State var codingStat = Stat(name: "Coding",
                                 achievements: [
                                    Achievement(name: "get fulltime developer job",
                                                isComplete: true,
                                                dependant: []),
                                    Achievement(name: "release app to Apple app store",
                                                isComplete: false, dependant: []),
                                    Achievement(name: "get 100 downloads for app released to Apple app store", isComplete: false, dependant: ["release app to Apple app store"]),
                                    Achievement(name: "get 1000 downloads for app released to Apple app store", isComplete: false, dependant: ["get 100 downloads for app released to Apple app store"]),
                                    Achievement(name: "release app to Google play store", isComplete: false, dependant: [])
                                 ],
                                 missions: [
                                    "build app on XCode daily"
                                 ],
                                 emoji: "👨‍💻",
                                 isCore: false,
                                 type: "special"
    )
    
    @State var skydivingStat = Stat(name: "Skydiving",
                                    achievements: [
                                        Achievement(name: "become skydiving instructor", isComplete: false, dependant: [])
                                    ],
                                    missions: [
                                        "sky dive for first time"
                                    ],
                                    emoji: "🪂",
                                    isCore: false,
                                    type: "special"
    )
    
    @State var marksmanshipStat = Stat(name: "Marksmanship",
                                       achievements: [
                                        Achievement(name: "shoot bow and arrow",isComplete: false, dependant: []),
                                        Achievement(name: "shoot gun", isComplete: false, dependant: [])
                                       ],
                                       missions: [
                                        "go to gun range"
                                       ],
                                       emoji: "🎯",
                                       isCore: false,
                                       type: "special"
    )
    
    @State var drivingStat = Stat(name: "Driving",
                                  achievements: [
                                    Achievement(name: "obtain learner permit",isComplete: true, dependant: []),
                                    Achievement(name: "obtain driver license",isComplete: true, dependant: []),
                                    Achievement(name: "win drag race", isComplete: false, dependant: []),
                                    Achievement(name: "win Nascar race", isComplete: false, dependant: []),
                                    Achievement(name: "win Formula 1 race", isComplete: false, dependant: [])
                                  ],
                                  missions: [
                                    "drive in race track"
                                  ],
                                  emoji: "🛞",
                                  isCore: false,
                                  type: "special"
    )
    
    @State var influenceStat = Stat(name: "Influence",
                                    achievements: [
                                        Achievement(name: "obtain 1000 Instagram followers", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 10000 Instagram followers", isComplete: false, dependant: ["obtain 1000 Instagram followers"]),
                                        Achievement(name: "obtain 1000000 Instagram followers", isComplete: false, dependant: ["obtain 10000 Instagram followers"]),
                                        Achievement(name: "is verified on Instagram", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 1000 Youtube followers", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 10000 Youtube followers", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 1000000 Youtube followers", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 1000 TikTok followers", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 10000 TikTok followers", isComplete: false, dependant: []),
                                        Achievement(name: "obtain 1000000 TikTok followers", isComplete: false, dependant: []),
                                        Achievement(name: "has a podcast", isComplete: false, dependant: [])
                                    ],
                                    missions: [
                                        "make social media posts"
                                    ],
                                    emoji: "🤳",
                                    isCore: false,
                                    type: "special"
    )
    
    @State var powerStat = Stat(name: "Power",
                                achievements: [
                                    Achievement(name: "register for LLC", isComplete: false, dependant: []),
                                    Achievement(name: "employ 1 person", isComplete: false, dependant: []),
                                    Achievement(name: "employ 10 person", isComplete: false, dependant: []),
                                    Achievement(name: "employ 100 person", isComplete: false, dependant: []),
                                    Achievement(name: "has dual citizenships", isComplete: false, dependant: []),
                                    Achievement(name: "has 3 citizenships", isComplete: false, dependant: []),
                                    Achievement(name: "become ambassdor for country", isComplete: false, dependant: [])
                                ],
                                missions: [
                                    "start a company"
                                ],
                                emoji: "🪫",
                                isCore: false,
                                type: "special"
    )
        
    @State var fightingStat = Stat(name: "Fighting",
                                   achievements: [
                                    Achievement(name: "win in boxing match", isComplete: false, dependant: []),
                                    Achievement(name: "win in wrestling match", isComplete: false, dependant: [])
                                   ],
                                   missions: [
                                   ],
                                   emoji: "🥊",
                                   isCore: false,
                                   type: "sport"
    )
    
    @State var pickPocketStat = Stat(name: "Pickpocketing",
                                     achievements: [
                                        Achievement(name: "can take a watch off someone without them knowing", isComplete: false, dependant: [])
                                     ],
                                     missions: [
                                     ],
                                     emoji: "🥷",
                                     isCore: false,
                                     type: "special"
    )
    
    @State var knotTyingStat = Stat(name: "Knot Tying",
                                    achievements: [
                                        Achievement(name: "can tie square knot", isComplete: false, dependant: []),
                                        Achievement(name: "can tie clove hitch knot", isComplete: false, dependant: []),
                                        Achievement(name: "can tie clove bowline knot", isComplete: false, dependant: [])
                                    ],
                                    missions: [
                                    ],
                                    emoji: "🪢",
                                    isCore: false,
                                    type: "special"
    )
    
    @State var actingStat = Stat(name: "Acting",
                                 achievements: [
                                    Achievement(name: "played extra in movie", isComplete: false, dependant: []),
                                    Achievement(name: "played main character in movie", isComplete: false, dependant: []),
                                    Achievement(name: "featued in commercial", isComplete: false, dependant: []),
                                    Achievement(name: "won Golden Globe award", isComplete: false, dependant: []),
                                    Achievement(name: "won Oscar award", isComplete: false, dependant: [])
                                 ],
                                 missions: [
                                 ],
                                 emoji: "🕴",
                                 isCore: false,
                                 type: "special"
    )
        
    @State var cookingStat = Stat(name: "Cooking",
                                  achievements: [
                                    Achievement(name: "own resturant", isComplete: false, dependant: []),
                                    Achievement(name: "worked as resturant cook", isComplete: false, dependant: []),
                                  ],
                                  missions: [
                                  ],
                                  emoji: "🥘",
                                  isCore: false,
                                  type: "special"
    )
    
    @State var pokerStat = Stat(name: "Poker",
                                achievements: [
                                    Achievement(name: "win over 50k buy-in tournament", isComplete: false, dependant: []),
                                    Achievement(name: "win over 100k buy-in tournament", isComplete: false, dependant: ["win 50k buy-in tournament"]),
                                ],
                                missions: [
                                ],
                                emoji: "🃏",
                                isCore: false,
                                type: "special"
    )
    
    
    @State var baristaStat = Stat(name: "Barista",
                                  achievements: [
                                    Achievement(name: "can make ice coffee", isComplete: false, dependant: []),
                                    Achievement(name: "can make americano", isComplete: false, dependant: []),
                                    Achievement(name: "can make espresso", isComplete: false, dependant: []),
                                    Achievement(name: "can make cortado", isComplete: false, dependant: []),
                                    Achievement(name: "can make cappuccino", isComplete: false, dependant: []),
                                    Achievement(name: "participate in world cafe art championship", isComplete: false, dependant: [])
                                  ],
                                  missions: [
                                  ],
                                  emoji: "🍸",
                                  isCore: false,
                                  type: "special"
    )
    
    @State var musicianStat = Stat(name: "Musician",
                                   achievements: [
                                    Achievement(name: "can play song on piano", isComplete: false, dependant: []),
                                    Achievement(name: "can play song on guitar", isComplete: false, dependant: []),
                                   ],
                                   missions: [
                                   ],
                                   emoji: "🎶",
                                   isCore: false,
                                   type: "special"
    )
    
    @State var soccerStat = Stat(name: "Soccer",
                                 achievements: [
                                    Achievement(name: "plays in Premier League", isComplete: false, dependant: []),
                                    Achievement(name: "plays in Champions League", isComplete: false, dependant: []),
                                 ],
                                 missions: [
                                 ],
                                 emoji: "⚽️",
                                 isCore: false,
                                 type: "sport"
    )
    
    @State var constructionStat = Stat(name: "Construction",
                                       achievements: [
                                        Achievement(name: "build a birdhouse", isComplete: false, dependant: []),
                                        Achievement(name: "build a house", isComplete: false, dependant: []),
                                       ],
                                       missions: [
                                       ],
                                       emoji: "🏗",
                                       isCore: false,
                                       type: "special"
    )
    
    @State var photographyStat = Stat(name: "Photography",
                                      achievements: [
                                        Achievement(name: "Instagram page with 100 followers", isComplete: false, dependant: []),
                                      ],
                                      missions: [
                                      ],
                                      emoji: "📸",
                                      isCore: false,
                                      type: "special"
    )
    
    @State var magicStat = Stat(name: "Magic",
                                achievements: [
                                    Achievement(name: "can do trick with cards", isComplete: false, dependant: []),
                                    Achievement(name: "can do trick with coin", isComplete: false, dependant: []),
                                ],
                                missions: [
                                ],
                                emoji: "🪄",
                                isCore: false,
                                type: "special"
    )
    
    @State var droneFlyingStat = Stat(name: "Drone Flying",
                                     achievements: [
                                        Achievement(name: "fly first drone", isComplete: false, dependant: []),
                                     ],
                                     missions: [
                                     ],
                                     emoji: "🤖",
                                     isCore: false,
                                     type: "special"
    )
    
    // sports stats
    
    @State var boulderingStat = Stat(name: "Bouldering",
                                     achievements: [
                                        Achievement(name: "Participate in world championship", isComplete: false, dependant: []),
                                     ],
                                     missions: [
                                     ],
                                     emoji: "🧗‍♀️",
                                     isCore: false,
                                     type: "sport"
    )
    
    @State var artistStat = Stat(name: "Artist",
                                     achievements: [
                                        Achievement(name: "release anime", isComplete: false, dependant: []),
                                        Achievement(name: "release manga", isComplete: false, dependant: []),
                                     ],
                                     missions: [
                                     ],
                                     emoji: "🎨",
                                     isCore: false,
                                     type: "special"
    )
    
    @State var cryptoStat = Stat(name: "Crypto",
                                     achievements: [
                                        Achievement(name: "create coin", isComplete: false, dependant: []),
                                        Achievement(name: "own one of each coin", isComplete: false, dependant: []),
                                     ],
                                     missions: [
                                     ],
                                     emoji: "🪙",
                                     isCore: false,
                                     type: "money"
    )
        
    weak var sceneView: SCNView!
    
    init() {
        let scene = SCNScene(named: "person.obj")
        // 2: Add camera node
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        // 3: Place camera
        cameraNode.position = SCNVector3(x: 0, y: 10, z: 35)
        // 4: Set camera on scene
        scene?.rootNode.addChildNode(cameraNode)
        
        // 5: Adding light to scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 35)
        scene?.rootNode.addChildNode(lightNode)
        
        // 6: Creating and adding ambien light to scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.darkGray
        scene?.rootNode.addChildNode(ambientLightNode)
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(showingStat: false,
                     stat: Stat(name: "", achievements: [], missions: [], emoji: "", isCore: false, type: "special"),
                     stats: [healthStat,
                             strengthStat,
                             intelligenceStat,
                             speechStat,
                             charismaStat,
                             realEstateStat,
                             financeStat,
                             codingStat,
                             djStat,
                             powerStat,
                             influenceStat,
                             drivingStat,
                             copyrightStat,
                             marksmanshipStat,
                             knotTyingStat,
                             actingStat,
                             cookingStat,
                             pokerStat,
                             musicianStat,
                             constructionStat,
                             photographyStat,
                             fightingStat,
                             boulderingStat,
                             soccerStat,
                             droneFlyingStat,
                             baristaStat,
                             skydivingStat,
                             magicStat,
                             pickPocketStat,
                             artistStat,
                             cryptoStat
                            ]).environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
