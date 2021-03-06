//
//  SubcategoryList.swift
//  itea-ios-products-magazine
//
//  Created by Лилия on 4/28/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit

var arraySubcategory1: [SubcategoryList] = []
var arraySubcategory2: [SubcategoryList] = []
var arraySubcategory3: [SubcategoryList] = []
var arraySubcategory4: [SubcategoryList] = []
var arraySubcategory5: [SubcategoryList] = []
var arraySubcategory6: [SubcategoryList] = []
var arraySubcategory7: [SubcategoryList] = []
var arraySubcategory8: [SubcategoryList] = []
var arraySubcategory9: [SubcategoryList] = []
var arraySubcategory10: [SubcategoryList] = []
var arraySubcategory11: [SubcategoryList] = []
var arraySubcategory12: [SubcategoryList] = []
var arraySubcategory13: [SubcategoryList] = []
var arraySubcategory14: [SubcategoryList] = []
var arraySubcategory15: [SubcategoryList] = []

enum SubcategoryList {
    //More
    case ikraKrasnaya1
    case ikraKrasnaya2
    case ikraKrasnaya3
    case ikraChernaya1
    case fish1
    case fish2
    //Moloko
    case milk1
    case milk2
    case cheese1
    case cheese2
    case iceCream1
    case iceCream2
    case iceCream3
    //Sad
    case fruit1
    case fruit2
    case vegetable1
    case vegetable2
    case vegetable3
    case green1
    case green2
    //Sneki
    case peanut1
    case peanut2
    case chips1
    case chips2
    case chackers1
    //Napitki
    case alcohol1
    case alcohol2
    case water1
    case water2
    case water3
    case juice1
    
    static func returnName(type: SubcategoryList) -> String {
        switch type {
        case .ikraKrasnaya1:
            return "Икра Горбуши"
        case .ikraKrasnaya2:
            return "Икра Кеты"
        case .ikraKrasnaya3:
            return "Икра Лососевая"
        case .ikraChernaya1:
            return "Икра Белуги"
        case .fish1:
            return "Семга"
        case .fish2:
            return "Форель"
        case .milk1:
            return "Безлактозное"
        case .milk2:
            return "Органическое"
        case .cheese1:
            return "Крем-сыр"
        case .cheese2:
            return "Твердые сыры"
        case .iceCream1:
            return "Эскимо"
        case .iceCream2:
            return "Пломбир"
        case .iceCream3:
            return "Вафельный стаканчик"
        case .fruit1:
            return "Яблоки"
        case .fruit2:
            return "Виноград"
        case .vegetable1:
            return "Томат"
        case .vegetable2:
            return "Картофель"
        case .vegetable3:
            return "Капуста"
        case .green1:
            return "Руккола"
        case .green2:
            return "Петрушка"
        case .peanut1:
            return "Арахис"
        case .peanut2:
            return "Миндаль"
        case .chackers1:
            return "Сухарики"
        case .chips1:
            return "Картофельные"
        case .chips2:
            return "Фруктовые"
        case .alcohol1:
            return "Вино"
        case .alcohol2:
            return "Пиво"
        case .water1:
            return "Без газа"
        case .water2:
            return "Сильногазированная"
        case .water3:
            return "Слабогазированная"
        case .juice1:
            return "Натуральные"
            
        }
    }
    static func arraySubcategoryAppend() {
    arraySubcategory1.append(.ikraKrasnaya1)
    arraySubcategory1.append(.ikraKrasnaya2)
    arraySubcategory1.append(.ikraKrasnaya3)
    arraySubcategory2.append(.ikraChernaya1)
    arraySubcategory3.append(.fish1)
    arraySubcategory3.append(.fish2)
    arraySubcategory4.append(.milk1)
    arraySubcategory4.append(.milk2)
    arraySubcategory5.append(.cheese1)
    arraySubcategory5.append(.cheese2)
    arraySubcategory6.append(.iceCream1)
    arraySubcategory6.append(.iceCream2)
    arraySubcategory6.append(.iceCream3)
    arraySubcategory7.append(.fruit1)
    arraySubcategory7.append(.fruit2)
    arraySubcategory8.append(.vegetable1)
    arraySubcategory8.append(.vegetable2)
    arraySubcategory8.append(.vegetable3)
    arraySubcategory9.append(.green1)
    arraySubcategory9.append(.green2)
    arraySubcategory10.append(.peanut1)
    arraySubcategory10.append(.peanut2)
    arraySubcategory11.append(.chackers1)
    arraySubcategory12.append(.chips1)
    arraySubcategory12.append(.chips2)
    arraySubcategory13.append(.alcohol1)
    arraySubcategory13.append(.alcohol2)
    arraySubcategory14.append(.water1)
    arraySubcategory14.append(.water2)
    arraySubcategory14.append(.water3)
    arraySubcategory15.append(.juice1)
    }
    
}
