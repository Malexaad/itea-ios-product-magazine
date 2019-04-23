//
//  LoginsDictManager.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/23/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit

class LoginDictManager {
    var logPassDict = Dictionary<String,UserDictModel>()
    
    init() {
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "malex-image"), password: "qwerty"), forKey: "malex")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "lilia-image"), password: "12345"), forKey: "lili")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "mol-image"), password: "qazwsx"), forKey: "mol")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "viacheslav-image"), password: "asdfgh"), forKey: "viacheslav")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "vitalik-image"), password: "zxcvbn"), forKey: "vitalik")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "tor-image"), password: "qwerty123"), forKey: "tor")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "default-image"), password: "asd123"), forKey: "daniel")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "kiril-image"), password: "rfvtgb"), forKey: "kiril")
        
    }
    
    func GetLogPassDict() -> Dictionary<String,UserDictModel> {
        return logPassDict
    }
}
