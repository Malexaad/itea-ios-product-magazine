//
//  UserInfoModel.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 5/15/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit
import Foundation

class UserInfoModel {
    var username : String
    var userFoto : UIImage
    init(username : String, userFoto: UIImage) {
        self.username = username
        self.userFoto = userFoto
    }
}
