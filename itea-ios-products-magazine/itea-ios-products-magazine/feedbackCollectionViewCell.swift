//
//  feedbackCollectionViewCell.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class feedbackCollectionViewCell: UICollectionViewCell, UITextFieldDelegate  {
    
    @IBOutlet weak var saveFeedbackButton: UIButton!
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
    @IBOutlet weak var raitingView: UIView!
    
    var fb: Feedback?
    var raitingStarArray: [UIImageView] = []
    
    func update(feedback: Feedback) {
        fb = feedback
        userPhoto.layer.cornerRadius = userPhoto.layer.bounds.width/2
        raitingStarArray = [star1,star2,star3,star4,star5]
        fillFeedback()
        editingFields(canBeEdited: fb?.isNewFeedback ?? false)
    }
    
    func editingFields(canBeEdited: Bool) {
        let userIsEmpty = userNameField.text == defaultName ? true : false
        
        saveFeedbackButton.isHidden = !canBeEdited
        userNameField.isUserInteractionEnabled = userIsEmpty ? canBeEdited : false
        commentNameField.isUserInteractionEnabled = canBeEdited
        comment.isUserInteractionEnabled = canBeEdited
        
        if canBeEdited {
            let color = UIColor.lightGray
            if  userIsEmpty { //CE522B
                userNameField.backgroundColor = color
                userNameField.becomeFirstResponder()
            }
            else {
                commentNameField.becomeFirstResponder()
            }
            commentNameField.backgroundColor = color
            comment.backgroundColor = color
            raitingView.backgroundColor = color
        }
    }
    
    func fillFeedback() {
        userPhoto.image = UIImage(named: fb?.user?.userPhoto ?? defaultPicture)
        userNameField.text = fb?.user?.userName ?? defaultName
        dateLabel.text = fb?.date ?? ""
        commentNameField.text = fb?.title ?? "Нет комментария"
        comment.text = fb?.comment ?? ""
        fillRaiting()
    }
    
    func fillRaiting() {
        let starCount = fb?.raiting ?? 0
        for i in 0..<starCount {
            raitingStarArray[i].image = UIImage(named: "star2")
        }
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
