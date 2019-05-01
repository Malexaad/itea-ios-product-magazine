//
//  FeedbackViewController.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

var defaultPicture = "default1"
var defaultName = "Аноним"
var defaultProdName = "Товар не выбран"

class FeedbackViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var userPhotoHeader: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var fbCollectoinView: UICollectionView!
    @IBOutlet weak var leaveFeedback: UIButton!
    
    
    var fbUser: User?
    var fbProduct: Product?
    var feedbackArray: [Feedback] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbCollectoinView.delegate = self
        fbCollectoinView.dataSource = self
        
        self.navigationController?.isNavigationBarHidden = true
        
        userPhotoHeader.image = UIImage(named: fbUser?.userPhoto ?? defaultPicture)
        headerLabel.text = fbProduct?.prodName ?? defaultProdName
        userPhotoHeader.layer.cornerRadius = CGFloat(userPhotoHeader.bounds.width/2)
        leaveFeedback.layer.cornerRadius = CGFloat(setCornerRadius())
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    func setCornerRadius() -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return feedbackArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "feedbackCollectionViewCell", for: indexPath) as! feedbackCollectionViewCell
        item.update(feedback: feedbackArray[indexPath.row])
        item.layer.cornerRadius = CGFloat(setCornerRadius())
        return item
    }
    
    func update(user: User?, product: Product?) {
        fbUser = user
        fbProduct = product
        //закомментировать этот проверочный код
        AddComment(comment: "попробовал, очень вкусно", title: "под пивас норм", date: "28.04.2019 13.00", raiting: 4, user: fbUser, product: fbProduct, isNewFeedback: false)
        AddComment(comment: "полное гавно", title: "отравился", date: "28.04.2019 21.00", raiting: 1, user: fbUser, product: fbProduct, isNewFeedback: false)
        //
    }
    
    func AddComment(comment: String, title: String, date: String, raiting: Int, user: User?, product: Product?, isNewFeedback: Bool) {
        let emptyFb = "Здесь пока никто ничего не писал..."
        let emptyTitle = "Нет отзыва"
        let emptyDate = ""
        let emptyRaiting = 0
        let emptyUser = user ?? User(userName: defaultName, userPhoto: defaultPicture)
        let emptyProduct = product ?? Product(name: defaultProdName)
        
        let fbComment  = comment == "" ? emptyFb : comment
        let fbTitle  = title == "" ? emptyTitle : title
        let fbDate  = date == "" ? emptyDate : date
        let fbRaiting  = raiting == 0 ? emptyRaiting : raiting
        
        feedbackArray.append(Feedback(comment: fbComment, title: fbTitle, date: fbDate, raiting: fbRaiting, user: emptyUser, product: emptyProduct, isNewFeedback: isNewFeedback))
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        let d = notification.userInfo
        self.animatedTextField(up: true, height: getKeyboardHeight(notification: notification))
        scrollToLastRow()
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        self.animatedTextField(up: false, height: getKeyboardHeight(notification: notification))
    }
    
    func getKeyboardHeight(notification: NSNotification) -> CGFloat {
        if let userInfo = notification.userInfo {
            let keyboardSize = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
            let kbHeight = keyboardSize?.height ?? 0
            return kbHeight
        }
        return 0
    }
    
    func scrollToLastRow() {
        let indexPath = NSIndexPath(row: feedbackArray.count - 1, section: 0)
        self.fbCollectoinView.scrollToItem(at: indexPath as IndexPath, at: .bottom, animated: true)
    }
    
    func animatedTextField(up: Bool, height: CGFloat) {
        let movement = (up ? -height : height)
        UIView.animate(withDuration: 0.3, animations: {
            self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
            
        })
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func leaveFeedbackButtonPressed(_ sender: Any)  {
        let prodIsEmpty =  fbProduct == nil ? true : false
        if !prodIsEmpty {
            AddComment(comment: "", title: "", date: "", raiting: 0, user: fbUser, product: fbProduct, isNewFeedback: true)
            fbCollectoinView.reloadData()
        }
        else {
            Alert().presentWarning(delegate: self, message: "Товар не выбран, комментарий оставить нельзя")
        }
    }
    
    @IBAction func TapMove(_ sender: Any) {
        dismissKeyboard()
    }
    
    
}
