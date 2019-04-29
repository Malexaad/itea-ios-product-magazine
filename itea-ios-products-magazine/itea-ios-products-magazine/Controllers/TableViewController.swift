//
//  TableViewController.swift
//  itea-ios-products-magazine
//
//  Created by Лилия on 4/23/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func back(_ sender: Any) {
        
    }
    
    var arraySubcategory: [SubcategoryList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.isNavigationBarHidden = true
        
        let tableViewCell = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(tableViewCell, forCellReuseIdentifier: "TableViewCell")
        
        
        avatarImage.clipsToBounds = true
        avatarImage.layer.cornerRadius = 30
        
        arraySubcategory.append(.chackers1)
        arraySubcategory.append(.cheese1)
        arraySubcategory.append(.cheese2)
        arraySubcategory.append(.chips1)
        arraySubcategory.append(.chips2)
        arraySubcategory.append(.fish1)
        arraySubcategory.append(.fish2)
        arraySubcategory.append(.fruit1)
        arraySubcategory.append(.fruit2)
        arraySubcategory.append(.green1)
        arraySubcategory.append(.green2)
        arraySubcategory.append(.iceCream1)
        arraySubcategory.append(.iceCream2)
        arraySubcategory.append(.iceCream3)
        arraySubcategory.append(.ikraChernaya1)
        arraySubcategory.append(.ikraKrasnaya1)
        arraySubcategory.append(.ikraKrasnaya2)
        arraySubcategory.append(.ikraKrasnaya3)
        arraySubcategory.append(.milk1)
        arraySubcategory.append(.milk2)
        arraySubcategory.append(.peanut1)
        arraySubcategory.append(.peanut2)
        arraySubcategory.append(.vegetable1)
        arraySubcategory.append(.vegetable2)
        arraySubcategory.append(.vegetable3)
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Чипсы"
        case 1:
            return "Сухарики"
        default:
            break
        }
        return "No name"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.update(type: arraySubcategory[indexPath.row])
        return cell
    }
}
