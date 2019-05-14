//
//  classPracticeViewController.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 5/8/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class classPracticeViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTapGuestureRecognizer()
    }
    
    func setTapGuestureRecognizer() {
        
//        self.view.setSwipesGuestures(selectors: [#selector(redTap), #selector(blueTap), #selector(orangeTap)], directions: [.down])
        
        globalGuester(direction: .down, selector: #selector(swipeDown))
        
        let label1Tap = UITapGestureRecognizer(target: self, action: #selector(label1DidTap))
        label1.addGestureRecognizer(label1Tap)
        
        let label2Tap = UITapGestureRecognizer(target: self, action: #selector(label2DidTap))
        label2.addGestureRecognizer(label2Tap)
        
        let label3Tap = UITapGestureRecognizer(target: self, action: #selector(label3DidTap))
        label3.addGestureRecognizer(label3Tap)
        
        let label4Tap = UITapGestureRecognizer(target: self, action: #selector(label4DidTap))
        label4.addGestureRecognizer(label4Tap)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft(gesture:)))
        swipeLeft.direction = .left
        image.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight(gesture:)))
        swipeRight.direction = .right
        image.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeUp(gesture:)))
        swipeUp.direction = .up
        image.addGestureRecognizer(swipeUp)
        
//        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown(gesture:)))
//        swipeDown.direction = .down
//        image.addGestureRecognizer(swipeDown)
    }
    
    @objc func label1DidTap() {
        label1.backgroundColor = UIColor.black
        label1.textColor = UIColor.white
        label2.backgroundColor = UIColor.white
        label2.textColor = UIColor.black
        label3.backgroundColor = UIColor.white
        label3.textColor = UIColor.black
        label4.backgroundColor = UIColor.white
        label4.textColor = UIColor.black
    }
    
    @objc func label2DidTap(gesture: UISwipeGestureRecognizer) -> Void {
        label1.backgroundColor = UIColor.white
        label1.textColor = UIColor.black
        label2.backgroundColor = UIColor.black
        label2.textColor = UIColor.white
        label3.backgroundColor = UIColor.white
        label3.textColor = UIColor.black
        label4.backgroundColor = UIColor.white
        label4.textColor = UIColor.black
    }
    
    @objc func label3DidTap(gesture: UISwipeGestureRecognizer) -> Void {
        label1.backgroundColor = UIColor.white
        label1.textColor = UIColor.black
        label2.backgroundColor = UIColor.white
        label2.textColor = UIColor.black
        label3.backgroundColor = UIColor.black
        label3.textColor = UIColor.white
        label4.backgroundColor = UIColor.white
        label4.textColor = UIColor.black
    }
    
    @objc func label4DidTap(gesture: UISwipeGestureRecognizer) -> Void {
        label1.backgroundColor = UIColor.white
        label1.textColor = UIColor.black
        label2.backgroundColor = UIColor.white
        label2.textColor = UIColor.black
        label3.backgroundColor = UIColor.white
        label3.textColor = UIColor.black
        label4.backgroundColor = UIColor.black
        label4.textColor = UIColor.white
    }
    
    @objc func swipeLeft(gesture: UISwipeGestureRecognizer) -> Void {
        image.image = UIImage(named: "pot")
    }
    
    @objc func swipeRight(gesture: UISwipeGestureRecognizer) -> Void {
        image.image = UIImage(named: "bart")
    }
    
    @objc func swipeUp(gesture: UISwipeGestureRecognizer) -> Void {
        image.image = UIImage(named: "kap")
    }
    
    @objc func swipeDown(gesture: UISwipeGestureRecognizer) -> Void {
        image.image = UIImage(named: "mork")
    }
    
    func globalGuester(direction: UISwipeGestureRecognizer.Direction, selector: Selector) {
        let swipeGuester = UISwipeGestureRecognizer(target: self, action: selector)
        swipeGuester.direction = direction
        self.view.addGestureRecognizer(swipeGuester)
    }
    
}
