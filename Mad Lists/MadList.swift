//
//  List.swift
//  Mad Lists
//
//  Created by Mason Dehl on 12/24/25.
//

import Foundation
import SwiftData

@Model
final class MadList {
    var items: [Item]
    var name: String
    
    init(items: [Item] = [], name: String) {
        let itemOne = Item(timestamp: Date.now, name: "Item 1")
        let itemTwo = Item(timestamp: Date.now, name: "Item 2")
        
        self.items = [itemOne, itemTwo]
        self.name = name
    }
    
    public func addItem(item: Item) {
        items.append(item)
    }
}
