//
//  Feedback.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/28/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class Feedback: NSObject {
    var comment = ""
    var title = ""
    var date = ""
    var raiting = 0
    var user: User?
    var product: Product?
    var isNewFeedback = false
    
    init(comment: String, title: String, date: String, raiting: Int, user: User?, product: Product?, isNewFeedback: Bool) {
        self.comment = comment
        self.title = title
        self.date = date
        self.raiting = raiting
        self.user = user
        self.product = product
        self.isNewFeedback = isNewFeedback
    }
}
