//
//  UsersDictModel.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/22/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit

class UserDictModel: NSObject, NSCoding {
 
   var userFoto : UIImage
   var userName : String
   var userPassword : String
    
    init(foto : UIImage, password: String, userName: String) {
        self.userFoto = foto
        self.userPassword = password
        self.userName = userName
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(userFoto, forKey: "userFoto")
        aCoder.encode(userPassword, forKey: "userPassword")
        aCoder.encode(userName, forKey: "userName")
    }
    
    required init?(coder aDecoder: NSCoder) {
        userFoto = aDecoder.decodeObject(forKey: "userFoto") as! UIImage
        userPassword = aDecoder.decodeObject(forKey: "userPassword") as! String
        userName = aDecoder.decodeObject(forKey: "userName") as! String
    }
}
