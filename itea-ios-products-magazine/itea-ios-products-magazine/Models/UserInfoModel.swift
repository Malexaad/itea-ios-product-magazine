//
//  UserInfoModel.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/23/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit
class UserInfoModel {
    var username : String
    var userFoto : UIImage
    init(username : String, userFoto: UIImage) {
        self.username = username
        self.userFoto = userFoto
    }
}
