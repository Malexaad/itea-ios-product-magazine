//
//  ItemsList.swift
//  Categories
//
//  Created by Даниил Чупайда on 4/23/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation

enum ItemType {
    case fish
    case milk
    case fruit
    case snacks
    
    static func returnNameType(type: ItemType) -> String {
        switch type {
        case .fish:
            return "Морепродукты"
        case .milk:
            return "Молочные продукты"
        case .fruit:
            return "Овощи, фрукты"
        case .snacks:
            return "Снеки"
        }
    }
}
