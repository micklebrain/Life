//
//  Stat.swift
//  Life
//
//  Created by Nathan Nguyen on 12/26/22.
//

import Foundation
import SwiftUI

struct HealthStat: Identifiable {
    var id: String {
        return name
    }
    var name: String
    var isOn: Bool
    init(name: String, isOn: Bool = false) {
        self.name = name
        self.isOn = isOn
    }
}
