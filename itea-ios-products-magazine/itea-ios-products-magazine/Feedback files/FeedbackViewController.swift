//
//  FeedbackViewController.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, feedbackCollectionViewCellProtocol {
    
    @IBOutlet weak var userPhotoHeader: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var fbCollectoinView: UICollectionView!
    @IBOutlet weak var leaveFeedback: UIButton!
    
    var fbUser: UserInfoModel?
    var fbProduct: Item?

    var feedbackArray: [Feedback] = []
    
    var kbWillHide = false
    var keyboardHeight: CGFloat = 0.0
    var collectionViewHeigth: CGFloat = 0.0
    var collectionViewYSize: CGFloat = 0.0
    var firstTime = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbCollectoinView.delegate = self
        fbCollectoinView.dataSource = self
        
        self.navigationController?.isNavigationBarHidden = true
        
        userPhotoHeader.image =  fbUser?.userFoto ?? UIImage(named: defaultPicture)
        headerLabel.text = fbProduct?.name ?? defaultProdName
        userPhotoHeader.layer.cornerRadius = CGFloat(userPhotoHeader.bounds.width/2)
        leaveFeedback.layer.cornerRadius = CGFloat(setCornerRadius())
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        collectionViewHeigth = fbCollectoinView.frame.origin.y
        collectionViewYSize = fbCollectoinView.frame.size.height
        
        fillManager()
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
        item.delegate = self
        item.update(feedback: (fbProduct?.feedbackArray?[indexPath.row])!)
        item.layer.cornerRadius = CGFloat(setCornerRadius())
        showButtonAddComment(hide: true)
        return item
    }
    
    func fillManager() {
        let currFbArray: [Feedback] = []
        if fbProduct == nil {
            fbProduct = Item(name: defaultProdName, feedbackArray: currFbArray)
        }
        if fbUser == nil {
            fbUser = UserInfoModel(username: defaultName, userFoto: UIImage(named: defaultPicture)!)
        }
        feedbackArray = fbProduct?.feedbackArray ?? currFbArray
        //        AddComment(comment: "Очень неплохо", title: "Хорошо", raiting: 5, user: fbUser, product: fbProduct, isNewFeedback: false)
        //        AddComment(comment: "Не рекомендую", title: "Отравился", raiting: 2, user: fbUser, product: fbProduct, isNewFeedback: false)
    }
    
    func AddComment(comment: String, title: String, raiting: Int, user: UserInfoModel?, product: Item?, isNewFeedback: Bool) {
        fbProduct?.feedbackArray?.append(Feedback(comment: comment, title: title, raiting: raiting, user: user, product: product, isNewFeedback: isNewFeedback))
        fillManager()
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        self.animatedTextField(up: true, height: getKeyboardHeight(notification: notification))
        scrollToLastRow()
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        self.animatedTextField(up: false, height: getKeyboardHeight(notification: notification))
    }
    
    func getKeyboardHeight(notification: NSNotification) -> CGFloat {
        if let userInfo = notification.userInfo {
            let keyboardSize = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
            var kbHeight = keyboardSize?.height ?? 0
            if firstTime {
                keyboardHeight = kbHeight
                firstTime = false
            }
            else {
                kbHeight = keyboardHeight
            }
            return kbHeight
        }
        return 0
    }
    
    func scrollToLastRow() {
        let indexPath = NSIndexPath(row: feedbackArray.count - 1, section: 0)
        self.fbCollectoinView.scrollToItem(at: indexPath as IndexPath, at: .bottom, animated: true)
    }
    
    func animatedTextField(up: Bool, height: CGFloat) {
        let movement =  -height
        self.fbCollectoinView.frame = CGRect(
            x: self.fbCollectoinView.frame.origin.x,
            y: collectionViewHeigth,
            width: self.fbCollectoinView.frame.size.width,
            height: up ? collectionViewYSize + movement : collectionViewYSize)
        
    }
    
    func showButtonAddComment(hide: Bool) {
        var needToHide = false
        for fbItem in feedbackArray {
            if fbItem.isNewFeedback {
                needToHide = true
            }
        }
        leaveFeedback.isHidden = needToHide
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func leaveFeedbackButtonPressed(_ sender: Any)  {
        let prodIsEmpty =  fbProduct == nil ? true : false
        if !prodIsEmpty {
            AddComment(comment: "", title: "", raiting: 0, user: fbUser, product: fbProduct, isNewFeedback: true)
            fbCollectoinView.reloadData()
            scrollToLastRow()
        }
        else {
            Alert().presentWarning(delegate: self, message: "Товар не выбран, комментарий оставить нельзя")
        }
    }
    
    @IBAction func TapMove(_ sender: Any) {
        dismissKeyboard()
        kbWillHide = false
    }
    
}
