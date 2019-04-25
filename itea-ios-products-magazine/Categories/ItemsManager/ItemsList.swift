//
//  ItemsList.swift
//  Categories
//
//  Created by Даниил Чупайда on 4/23/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation
import UIKit

enum ItemType {
    case fish
    case milk
    case fruit
    case snacks
    case drinks
    
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
        case .drinks:
            return "Напитки"
        }
    }
    static func returnImageItem(type: ItemType) -> UIImage {
        switch type {
        case .fish:
            return UIImage(named: "fish.jpg")!
        case .milk:
            return UIImage(named: "milk.jpg")!
        case .fruit:
            return UIImage(named: "fruit.jpg")!
        case .snacks:
            return UIImage(named: "snacks.jpg")!
        case .drinks:
            return UIImage(named: "drinks.jpg")!
        }
    }
}
