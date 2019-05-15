//
//  ShopsType.swift
//  itea-ios-products-magazine
//
//  Created by admin on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit


enum ShopsType {

    case atb
    case silpo
    case billa
    case fora
    case metro
    case ashan
    case novus
    
   static func returnNameType(type: ShopsType) -> String {
        switch type {
        case .atb:
            return "АТБ"
        case .silpo:
            return "Сильпо"
        case .billa:
            return "Billa"
        case .fora:
            return "Фора"
        case .metro:
            return "Метро"
        case .ashan:
            return "Ашан"
        case .novus:
            return "Novus"
        }
    }
    
   static func returnImageType(type: ShopsType) -> UIImage {
        switch type {
        case .atb:
            return UIImage(named: "atb") ?? UIImage()
        case .silpo:
            return UIImage(named: "silpo") ?? UIImage()
        case .billa:
            return UIImage(named: "billa") ?? UIImage()
        case .fora:
            return UIImage(named: "fora") ?? UIImage()
        case .metro:
            return UIImage(named: "metro") ?? UIImage()
        case .ashan:
            return UIImage(named: "ashan") ?? UIImage()
        case .novus:
            return UIImage(named: "novus") ?? UIImage()
        }
    }
    
   static func returnSiteType(type: ShopsType) -> String {
        switch type {
        case .atb:
            return "https://www.atbmarket.com/"
        case .silpo:
            return "https://silpo.ua/"
        case .billa:
            return "https://www.billa.ua/"
        case .fora:
            return "https://fora.ua/"
        case .metro:
            return "https://www.metro.ua/"
        case .ashan:
            return "https://www.auchan.ua/"
        case .novus:
            return "https://novus.ua/"
        }
    }
    
    
}
