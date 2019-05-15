//
//  Feedback.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/28/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

var defaultPicture = "default1"
var defaultName = "Аноним"
var defaultProdName = "Товар не выбран"

class Feedback: NSObject {
    var comment = ""
    var title = ""
    var date = ""
    var raiting = 0
    var user: UserInfoModel?
    var product: Item?
    var isNewFeedback = false
    
    var defaultComment = "Здесь пока никто ничего не писал..."
    var defaultTitle = "Нет отзыва"
    
    init(comment: String, title: String, raiting: Int, user: UserInfoModel?, product: Item?, isNewFeedback: Bool) {
        
        let timestamp: NSNumber = NSNumber(value: Int(NSDate().timeIntervalSince1970))
        let seconds = timestamp.doubleValue
        let timestampDate = NSDate(timeIntervalSince1970: seconds)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        self.date = dateFormatter.string(from: timestampDate as Date)
        
        let defaultUser = UserInfoModel(username: defaultName, userFoto: UIImage(named: defaultPicture)!)
        let defaultFbArray: [Feedback] = []
        let defaultProduct = Item(name: defaultProdName, feedbackArray: defaultFbArray)
        self.comment = comment == "" ? defaultComment : comment
        self.title = title == "" ? defaultTitle : title
        self.raiting = raiting
        self.user = user ?? defaultUser
        self.product = product ?? defaultProduct
        self.isNewFeedback = isNewFeedback
    }
}
