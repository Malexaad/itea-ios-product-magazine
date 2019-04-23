//
//  UsersDictModel.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/22/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit

class UserDictModel {
   var userFoto : UIImage
   private var userPassword : String
    
    init(foto : UIImage, password: String) {
        self.userFoto = foto
        self.userPassword = password
    }
}
