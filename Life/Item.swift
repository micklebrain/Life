//
//  Item.swift
//  Life
//
//  Created by Nathan Nguyen on 12/31/22.
//

import Foundation

struct Item: Identifiable {
    var id: String {
        return name
    }
    var name: String
    var emoji: String
    var description: String
}
