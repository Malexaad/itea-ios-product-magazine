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
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "Lilia-image"), password: "12345"), forKey: "lili")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "Mol-image"), password: "qazwsx"), forKey: "mol")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "slava-image"), password: "asdfgh"), forKey: "slava")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "Vitalik-image"), password: "zxcvbn"), forKey: "vitalik")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "defaultUser-image"), password: "qwerty123"), forKey: "tor")
        logPassDict.updateValue(UserDictModel(foto: UIImage(imageLiteralResourceName: "defaultUser-image"), password: "asd123"), forKey: "daniel")
    }
    
    func GetLogPassDict() -> Dictionary<String,UserDictModel> {
        return logPassDict
    }
}
