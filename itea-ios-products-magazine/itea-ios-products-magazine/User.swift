//
//  User.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/28/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class User: NSObject {
    var userName = ""
    var userPhoto = ""
    
    init(userName: String,userPhoto: String) {
        self.userName = userName
        self.userPhoto = userPhoto
    }
    
}
