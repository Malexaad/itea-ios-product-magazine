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
    
    func setCornerRadius() {
        userPhoto.layer.cornerRadius = userPhoto.layer.bounds.width/2
    }
}

