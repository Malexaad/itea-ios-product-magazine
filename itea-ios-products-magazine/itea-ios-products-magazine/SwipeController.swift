//
//  SwipeController.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 5/8/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class SwipeController: UIViewController {
    @IBOutlet weak var swipeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setGuestureRecognizer()
    }
    
    func setGuestureRecognizer() {
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft(gesture:)))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight(gesture:)))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeUp(gesture:)))
        swipeUp.direction = .up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown(gesture:)))
        swipeDown.direction = .down
        self.view.addGestureRecognizer(swipeDown)
        
    }
    
    @objc func swipeLeft(gesture: UISwipeGestureRecognizer) -> Void {
        swipeLabel.text = "LEFT"
        self.view.backgroundColor = UIColor.red
    }
    
    @objc func swipeRight(gesture: UISwipeGestureRecognizer) -> Void {
        swipeLabel.text = "RIGHT"
        self.view.backgroundColor = UIColor.blue
    }
    
    @objc func swipeUp(gesture: UISwipeGestureRecognizer) -> Void {
        swipeLabel.text = "UP"
        self.view.backgroundColor = UIColor.brown
    }
    
    @objc func swipeDown(gesture: UISwipeGestureRecognizer) -> Void {
        swipeLabel.text = "DOWN"
        self.view.backgroundColor = UIColor.green
    }

}
