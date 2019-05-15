//
//  DetailViewController.swift
//  itea-ios-products-magazine
//
//  Created by Валентин Петруля on 5/2/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var item: Item?
    var user: UserInfoModel?

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var shop: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var subcategory: UILabel!
    @IBOutlet weak var taste: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var reviewsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        update(item: item!)
        // Do any additional setup after loading the view.
    }
    
    func update(item: Item, user: UserInfoModel) {
        avatar.image = UIImage(named: user.userFoto)
        imageView.image = UIImage(named: item.image)
        name.text = item.name
        shop.text = item.shop
        category.text = item.category
        subcategory.text = item.subcategory
        weight.text = item.weight
        price.text = item.price
        taste.text = item.taste
        if let vc = UIStoryboard(name: "Feedback", bundle: nil).instantiateInitialViewController() {
            reviewsButton.setTitle("Отзывы" + "\(vc.feedbackArray.count)", for: .normal)
        }
    }
    
    @IBAction func didTapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didTapReviewButton(_ sender: Any) {
        if let vc = UIStoryboard(name: "Feedback", bundle: nil).instantiateInitialViewController() {
            vc.fbProduct = item
            vc.fbUser = user
            vc.modalTransitionStyle = .crossDissolve
            present(vc, animated: true, completion: nil)
        }
    }
    
}
