//
//  FeedbackViewController.swift
//  itea-ios-products-magazine
//
//  Created by Anatolii on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController {

    @IBOutlet weak var userPhotoHeader: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.navigationController?.isNavigationBarHidden = true
        
       userPhotoHeader.layer.cornerRadius = CGFloat(userPhotoHeader.bounds.width/2)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
