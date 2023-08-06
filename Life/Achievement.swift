//
//  Achievement.swift
//  Life
//
//  Created by Nathan Nguyen on 12/26/22.
//

import Foundation

struct Achievement {
    var id: String {
        return name
    }
    var name: String
    var isComplete: Bool
    var dependant: Array<String>
}
