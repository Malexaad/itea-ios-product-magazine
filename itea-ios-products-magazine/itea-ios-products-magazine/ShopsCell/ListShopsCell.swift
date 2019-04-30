//
//  ListShopsCell.swift
//  itea-ios-products-magazine
//
//  Created by admin on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class ListShopsCell: UITableViewCell {

    
    @IBOutlet weak var backgroundCellView: UIView!
    @IBOutlet weak var avatarShopImageView: UIImageView!
    @IBOutlet weak var nameShopLabel: UILabel!
    @IBOutlet weak var siteShopLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(type: ShopsType) {
        avatarShopImageView.clipsToBounds = true
        avatarShopImageView.layer.cornerRadius = 25
                
         nameShopLabel.text = ShopsType.returnNameType(type: type)
         avatarShopImageView.image = ShopsType.returnImageType(type: type)
         siteShopLabel.text = ShopsType.returnSiteType(type: type)
        
    }
    
}
