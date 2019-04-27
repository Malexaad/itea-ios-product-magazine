//
//  feedbackCollectionViewCell.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class feedbackCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var comment: UITextView!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var commentNameField: UITextField!
    
    var raitingStarArray: [UIImageView] = []
    
    func update() {
        userPhoto.layer.cornerRadius = userPhoto.layer.bounds.width/2
        raitingStarArray = [star1,star2,star3,star4,star5]
    }
    
    @IBAction func star1ButtonPressed(_ sender: Any) {
    }
    
    @IBAction func star2ButtonPressed(_ sender: Any) {
    }
    
    @IBAction func star3ButtonPressed(_ sender: Any) {
    }
    
    @IBAction func star4ButtonPressed(_ sender: Any) {
    }
    
    @IBAction func star5ButtonPressed(_ sender: Any) {
    }
    
}

