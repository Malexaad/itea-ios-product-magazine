//
//  Alert.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 5/1/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

 class Alert: NSObject {
    func presentWarning(delegate: UIViewController, message: String) {
        let alert = UIAlertController(title: "Внимание", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        delegate.present(alert, animated: false, completion: nil)
    }
}
