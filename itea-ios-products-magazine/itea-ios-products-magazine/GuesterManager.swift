//
//  GuesterManager.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 5/8/19.
//  Copyright © 2019 G9. All rights reserved.
//

import Foundation
import UIKit

//class GuestManager {
//
//    func setTapGuestureRecognizer(guesterView: UIView, selector: Selector) {
//        guesterView.isUserInteractionEnabled = true
//        let tapGuest = UITapGestureRecognizer(target: guesterView, action: selector)
//        guesterView.addGestureRecognizer(tapGuest)
//    }
//
//    func setSwipeGuestureRecognizer() {
//
//    }
//}

extension UIView {
    
    func setTapGuestureRecognizer(selector: Selector) {
        self.isUserInteractionEnabled = true
        let tapGuest = UITapGestureRecognizer(target: self, action: selector)
        self.addGestureRecognizer(tapGuest)
    }
    
    func setSwipeGuestureRecognizer(selector: Selector, direction: UISwipeGestureRecognizer.Direction) {
        self.isUserInteractionEnabled = true
    let swipeGuest = UISwipeGestureRecognizer(target: self, action: selector)
        swipeGuest.direction = direction
        self.addGestureRecognizer(swipeGuest)
    }
    
    func setSwipesGuestures(selectors: [Selector], directions: [UISwipeGestureRecognizer.Direction]) {
        self.isUserInteractionEnabled = true
        for (index, selector) in selectors.enumerated() {
            let swipeGuest = UISwipeGestureRecognizer(target: self, action: selector)
            swipeGuest.direction = directions[index]
            self.addGestureRecognizer(swipeGuest)
        }
    }
    
//    func setTapGuestures(selectors: [Selector], directions: [UISwipeGestureRecognizer.Direction]) {
//        self.isUserInteractionEnabled = true
//        for (index, selector) in selectors.enumerated() {
//            let swipeGuest = UISwipeGestureRecognizer(target: self, action: selector)
//            swipeGuest.direction = directions[index]
//            self.addGestureRecognizer(swipeGuest)
//        }
//    }
    
}
