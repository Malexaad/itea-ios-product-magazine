//
//  ItemsList.swift
//  Categories
//
//  Created by Даниил Чупайда on 4/23/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation

enum ItemType {
    case test1
    case test2
    case test3
    
    static func returnNameType(type: ItemType) -> String {
        switch type {
        case .test1:
            return "Test1"
        case .test2:
            return "Test2"
        case .test3:
            return "Test3"
        }
    }
}
