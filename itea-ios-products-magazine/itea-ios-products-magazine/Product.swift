//
//  Product.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/28/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

//class Product: NSObject {
//
//    var prodName = "Имя не задано"
//
//    init(name: String) {
//        prodName = name
//    }
//}

class Item {
    
    var name = ""
    var feedbackArray: [Feedback]?
    
    init(name: String, feedbackArray: [Feedback]?) {
      self.name = name
      self.feedbackArray = feedbackArray
    }
    
}
