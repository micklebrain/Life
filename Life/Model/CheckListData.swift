//
//  CheckListData.swift
//  08_03 Checkbox
//
//  Created by Steven Lipton on 8/7/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import Foundation

let devilsData = [
    CheckListItem(id:0, title:"Alcohol"),
    CheckListItem(id:1, title:"Masturbation")
]

let checkListData = [
    MissionCategory(id: 0,
                    items: [CheckListItem(id:0, title:"8 oz of water"),
                            CheckListItem(id:1, title:"Ceylon Cinnamon"),
                            CheckListItem(id:2, title:"Broccoli (head+stalk), 250 grams (@ family mart / Ministop)"),
                            CheckListItem(id:3, title:"Lime, 1 (natural Lawson)"),
                            CheckListItem(id:4, title:"Cauliflower. 150 grams"),
                            CheckListItem(id:5, title:"Shiitake or Maitake Mushrooms, 50 grams (@ don quijote)"),
                            CheckListItem(id:6, title:"Cumin, 1 Tbsp"),
                            CheckListItem(id:7, title:"Hemp Seeds, 1 Tbsp"),
                            CheckListItem(id:9, title:"Apple Cider Vinegar, 1 Tbsp"),
                            CheckListItem(id:10, title:"1 Tbsp of Extra Virgin Olive Oil"),
                            CheckListItem(id:11, title:"1 cup blueberries/raspberries/strawberries (your choice)"),
                            CheckListItem(id:12, title:"3 Tbsp ground macadamia nuts"),
                            CheckListItem(id:13, title:"2 tsp of ground walnuts"),
                            CheckListItem(id:14, title:"1/2 brazil nut"),
                            CheckListItem(id:15, title:"1/2 tsp ceylon cinnamon"),
                            CheckListItem(id:16, title:"50-100 mL Malk Almond Milk"),
                            CheckListItem(id:17, title:"2 oz freshly squeezed pomegranate juice"),
                            CheckListItem(id:18, title:"Sweet Potato 300 grams cooked (@ don quijote)"),
                            CheckListItem(id:19, title:"Grape Tomatoes 12"),
                            CheckListItem(id:20, title:"Avocado ½ (natural Lawson)"),
                            CheckListItem(id:21, title:"Limes 2 whole"),
                            CheckListItem(id:22, title:"Lemon 1 whole"),
                            CheckListItem(id:23, title:"C 500mg"),
                            CheckListItem(id:24, title:"D-3 2,000 IU"),
                            CheckListItem(id:25, title:"EPA 500mg with vitamin E 5mg"),
                            CheckListItem(id:26, title:"Zeaxanthin (20mg Lutein, 4mg Zeaxanthin)"),
                            CheckListItem(id:27, title:"Zinc 15mg"),
                            CheckListItem(id:28, title:"C 500mg"),
                            CheckListItem(id:29, title:"EPA 500mg"),
                            CheckListItem(id:30, title:"Turmeric 1g"),
                            CheckListItem(id:31, title:"Extra Virgin Olive Oil, 30mL daily"),],
                    title: "Diet"),
    
    MissionCategory(id: 1,
                    items: [CheckListItem(id:32, title:"push-ups"),
                            CheckListItem(id:33, title:"planks"),
                            CheckListItem(id:34, title:"15 min stretch on wall"),
                            CheckListItem(id:35, title:"5 min split stretch left leg"),
                            CheckListItem(id:36, title:"5 min split stretch right leg"),
                           ],
                    title: "Fitness"),
    MissionCategory(id: 2,
                    items: [CheckListItem(id:37, title:"read chapter of book"),
                            CheckListItem(id:38, title:"pass Japanese quiz"),
                           ],
                    title: "Knowledge"),
    MissionCategory(id: 3,
                    items: [
                        CheckListItem(id:39, title:"facial cleanser (morning)"),
                        CheckListItem(id:40, title:"facial toner"),
                        CheckListItem(id:41, title:"facial serum"),
                        CheckListItem(id:42, title:"facial lotion"),
                        CheckListItem(id:43, title:"facial oil"),
                        CheckListItem(id:44, title:"eye cream"),
                        CheckListItem(id:45, title:"brush tongue (morning)"),
                        CheckListItem(id:46, title:"mouthwash (morning)"),
                        CheckListItem(id:47, title:"brush tongue (night)"),
                        CheckListItem(id:48, title:"facial cleanser (night)"),
                        CheckListItem(id:49, title:"mouthwash (night)"),
                        CheckListItem(id:50, title:"brush teeth (night)"),
                    ],
                    title: "Wellness"),
    MissionCategory(id: 4,
                    items: [
                        CheckListItem(id:51, title:"post TikTok video"),
                        CheckListItem(id:52, title:"post Pinterest"),
                    ],
                    title: "Content")
]

let missionCategories = [
    MissionCategory(id: 0,
                    items: [
                        CheckListItem(id:0,
                                      title:"find remote server for script",
                                      category: "Development"),
                        CheckListItem(id:1,
                                      title:"deploy script to remote server",
                                      dependant: ["find remote server for script"],
                                      category: "Development"),
                        CheckListItem(id:2,
                                      title:"add web GUI",
                                      dependant: ["deploy script to remote server"])],
                    title: "Fully autonomous SoLo script"),
    MissionCategory(id: 1,
                    items: [
                        CheckListItem(id:2,
                                      title:"release app to App store"),
                        CheckListItem(id:3,
                                      title:"release version 2 of App to store",
                                      dependant: ["release app to App store"]),
                        CheckListItem(id:4,
                                      title:"release promotion video",
                                      dependant: ["release app to App store"])
                    ],
                    title: "Release first mobile application"),
    MissionCategory(id: 2,
                    items: [
                        CheckListItem(id:5, title:"read entire Japanese book",
                                      category: "Speech"),
                        CheckListItem(id:6, title:"pass JLPT N5 test",
                                      category: "Speech"),
                        CheckListItem(id:7, title:"pass JLPT N4 test", dependant: ["pass JLPT N5 test"],
                                      category: "Speech"),
                        CheckListItem(id:8, title:"pass JLPT N3 test", dependant: ["pass JLPT N4 test"],
                                      category: "Speech"),
                        CheckListItem(id:9, title:"pass JLPT N2 test", dependant: ["pass JLPT N3 test"],
                                      category: "Speech"),
                        CheckListItem(id:10, title:"pass JLPT N1 test", dependant: ["pass JLPT N2 test"],
                                      category: "Speech"),
                    ],
                    title: "Fluent in Japanese"),
    MissionCategory(id: 3,
                    items: [
                        CheckListItem(id:11, title:"do split", category: "Health"),
                        CheckListItem(id:12, title:"touch toes while standing", category: "Health")
                    ],
                    title: "Wellness"),
    MissionCategory(id: 4,
                    items: [
                        CheckListItem(id:13, title:"Become eligible for Youtube creator fund", category: "Influence"),
                        CheckListItem(id:14, title:"Become eligible for TikTok creator fund", category: "Influence")
                    ],
                    title: "Influencer"),
//    MissionCategory(id: 4,
//                    items: [
//                        CheckListItem(id:13, title:"read entire Korean book"),
//                    ],
//                    title: "Fluent in Korean")
]
