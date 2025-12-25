//
//  Item.swift
//  Mad Lists
//
//  Created by Mason Dehl on 12/24/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    var name: String
    
    init(timestamp: Date, name: String) {
        self.timestamp = timestamp
        self.name = name
    }
}
