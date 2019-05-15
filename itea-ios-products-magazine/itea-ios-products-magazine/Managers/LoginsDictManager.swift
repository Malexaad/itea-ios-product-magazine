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
    var logPassDict = [UserDictModel]()
    
    init() {
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "malex-image"), password: "qwerty" , userName: "malex"))
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "Lilia-image"), password: "12345" , userName: "lili"))
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "Mol-image"), password: "qazwsx" , userName: "mol"))
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "viacheslav-image"), password: "asdfgh" , userName: "viacheslav"))
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "Vitalik-image"), password: "zxcvbn" , userName: "vitalik"))
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "tor-image"), password: "qwerty123" , userName:"tor"))
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "default-image"), password: "asd123" , userName: "daniel"))
        logPassDict.append(UserDictModel(foto: UIImage(imageLiteralResourceName: "kiril-image"), password: "rfvtgb" , userName: "kiril"))
        
        
        let arch = archivePeople(groups: logPassDict)
        UserDefaults.standard.set(arch, forKey: "LogDictionary")
        UserDefaults.standard.synchronize()
        
    }
    
    func archivePeople(groups:[UserDictModel]) -> NSData {
        let archivedObject = NSKeyedArchiver.archivedData(withRootObject: groups as NSArray)
        return archivedObject as NSData
    }
    
    func retrievePeople() -> [UserDictModel]? {
        if let unarchivedObject = UserDefaults.standard.object(forKey: "LogDictionary") as? NSData {
            return NSKeyedUnarchiver.unarchiveObject(with: unarchivedObject as Data) as? [UserDictModel]
        }
        return nil
    }
    
}
