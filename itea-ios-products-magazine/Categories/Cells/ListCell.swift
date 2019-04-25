//
//  TableViewCell.swift
//  Categories
//
//  Created by Даниил Чупайда on 4/23/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var whiteBackground: UIImageView!
    @IBOutlet weak var cellNameLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellImage.clipsToBounds = true
        cellImage.layer.cornerRadius = 20
        
        whiteBackground.clipsToBounds = true
        whiteBackground.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func update(type: ItemType) {
        cellNameLabel.text = ItemType.returnNameType(type: type)
        cellImage.image = ItemType.returnImageItem(type: type)
    }
    
}
