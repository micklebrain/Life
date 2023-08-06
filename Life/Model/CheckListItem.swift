//
//  CheckListItem.swift
//  08_03 Checkbox
//
//  Created by Steven Lipton on 8/7/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct CheckListItem:Identifiable{
    var id:Int
    var isChecked: Bool = false
    var title: String
    var dependant: Array<String> = []
    var category: String = "" // needs to be enum
    var streak: Int = 0
}

struct MissionCategory:Identifiable {
    var id:Int
    var items: Array<CheckListItem>
    var title: String
}
