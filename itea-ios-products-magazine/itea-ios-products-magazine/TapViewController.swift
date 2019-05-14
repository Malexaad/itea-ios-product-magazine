//
//  TapViewController.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 5/8/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class TapViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTapGuestureRecognizer()
    }
    
    func setTapGuestureRecognizer() {
        
        let redViewTap = UITapGestureRecognizer(target: self, action: #selector(redTap))
        redView.addGestureRecognizer(redViewTap)
        
        let blueViewTap = UITapGestureRecognizer(target: self, action: #selector(blueTap))
        blueView.addGestureRecognizer(blueViewTap)
        
        let orangeViewTap = UITapGestureRecognizer(target: self, action: #selector(orangeTap))
        orangeView.addGestureRecognizer(orangeViewTap)
    }
    
    @objc func redTap() {
        colorLabel.text = "Red view was tapped"
    }
    
    @objc func blueTap() {
        colorLabel.text = "Blue view was tapped"
    }
    
    @objc func orangeTap() {
        colorLabel.text = "Orange view was tapped"
    }
    
    
}
