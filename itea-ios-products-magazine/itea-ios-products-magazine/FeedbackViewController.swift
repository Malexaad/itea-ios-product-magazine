//
//  FeedbackViewController.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var userPhotoHeader: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var fbCollectoinView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbCollectoinView.delegate = self
        fbCollectoinView.dataSource = self
        
        self.navigationController?.isNavigationBarHidden = true
        
        userPhotoHeader.layer.cornerRadius = CGFloat(userPhotoHeader.bounds.width/2)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return  1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "feedbackCollectionViewCell", for: indexPath) as! feedbackCollectionViewCell
        item.setCornerRadius()
        item.layer.cornerRadius = 8
        return item
    }
    
    
}
