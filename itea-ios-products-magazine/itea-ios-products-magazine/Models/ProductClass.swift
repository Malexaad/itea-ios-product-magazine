//
//  ProductClass.swift
//  itea-ios-products-magazine
//
//  Created by Andrew Boldyrev on 5/1/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit

class Product {
    
    var imageProduct : String
    var nameProduct : String
    var descriptionProduct : String
    var weightProduct : Int
    var priceProduct : Int
    //var item : [Item]
    
    init(imageProduct : String, nameProduct : String , descriptionProduct : String , weightProduct : Int , priceProduct : Int ) {
        self.imageProduct = imageProduct
        self.nameProduct = nameProduct
        self.descriptionProduct = descriptionProduct
        self.weightProduct = weightProduct
        self.priceProduct = priceProduct
    }
    
}
