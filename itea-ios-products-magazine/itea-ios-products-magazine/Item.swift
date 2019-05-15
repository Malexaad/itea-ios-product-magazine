//
//  Item.swift
//  itea-ios-products-magazine
//
//  Created by Валентин Петруля on 5/9/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var name: String
    var image: String
    var shop: String
    var category: String
    var subcategory: String
    var weight: String
    var price: String
    var taste: String
    var feedbackArray: [Feedback]
    
    init(name: String, image: String, shop: String, category: String, subcategory: String, weight: String, price: String, taste: String, feedbackArray: [Feedback]) {
        self.name = name
        self.image = image
        self.shop = shop
        self.category = category
        self.subcategory = subcategory
        self.weight = weight
        self.price = price
        self.taste = taste
        self.feedbackArray = feedbackArray
    }
}
