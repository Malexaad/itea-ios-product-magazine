//
//  DetailCollectionViewCell.swift
//  itea-ios-products-magazine
//
//  Created by Andrew Boldyrev on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit
import Foundation

class ProductListViewCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDiscription: UILabel!
    @IBOutlet weak var productWeight: UILabel!
    @IBOutlet weak var productPrice: UILabel!
   
    var product : Product?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
        func update (product : Product) {
            productImage.image = UIImage(named: product.imageProduct)
            productName.text = product.nameProduct
            productDiscription.text = product.descriptionProduct
            productWeight.text = "\(product.weightProduct ?? 0) гр"
            productPrice.text = "\(product.priceProduct ?? 0) грн"
    }
}
