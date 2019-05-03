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
    @IBOutlet weak var nameCategory: UILabel!
    
    //GO BACK TO SCREEN "KATEGORY"
    @IBAction func back(_ sender: Any) {
    navigationController?.popViewController(animated: true)
    }
    
    var categoryName: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.isNavigationBarHidden = true
        
        let tableViewCell = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(tableViewCell, forCellReuseIdentifier: "TableViewCell")
        
        
        avatarImage.clipsToBounds = true
        avatarImage.layer.cornerRadius = 30
        
        SubcategoryList.arraySubcategoryAppend()

    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return arraySubcategory1.count
        case 1:
            return arraySubcategory2.count
        case 2:
            return arraySubcategory3.count
        case 3:
            return arraySubcategory4.count
        case 4:
            return arraySubcategory5.count
        case 5:
            return arraySubcategory6.count
        case 6:
            return arraySubcategory7.count
        case 7:
            return arraySubcategory8.count
        case 8:
            return arraySubcategory9.count
        case 9:
            return arraySubcategory10.count
        case 10:
            return arraySubcategory11.count
        case 11:
            return arraySubcategory12.count
        case 12:
            return arraySubcategory13.count
        case 13:
            return arraySubcategory14.count
        case 14:
            return arraySubcategory15.count
        default:
            return 1
     }
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Икра красная"
        case 1:
            return "Икра черная"
        case 2:
            return "Красная рыба"
        case 3:
            return "Молоко"
        case 4:
            return "Сыры"
        case 5:
            return "Мороженое"
        case 6:
            return "Фрукты"
        case 7:
            return "Овощи"
        case 8:
            return "Зелень"
        case 9:
            return "Орехи"
        case 10:
            return "Сухарики"
        case 11:
            return "Чипсы"
        case 12:
            return "Алкоголь"
        case 13:
            return "Вода"
        case 14:
            return "Соки"
        default:
            break
        }
        return "No name"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        switch indexPath.section {
        case 0:
        cell.update(type: arraySubcategory1[indexPath.row])
        case 1:
         cell.update(type: arraySubcategory2[indexPath.row])
        case 2:
        cell.update(type: arraySubcategory3[indexPath.row])
        case 3:
        cell.update(type: arraySubcategory4[indexPath.row])
        case 4:
        cell.update(type: arraySubcategory5[indexPath.row])
        case 5:
        cell.update(type: arraySubcategory6[indexPath.row])
        case 6:
        cell.update(type: arraySubcategory7[indexPath.row])
        case 7:
        cell.update(type: arraySubcategory8[indexPath.row])
        case 8:
        cell.update(type: arraySubcategory9[indexPath.row])
        case 9:
        cell.update(type: arraySubcategory10[indexPath.row])
        case 10:
        cell.update(type: arraySubcategory11[indexPath.row])
        case 11:
        cell.update(type: arraySubcategory12[indexPath.row])
        case 12:
        cell.update(type: arraySubcategory13[indexPath.row])
        case 13:
        cell.update(type: arraySubcategory14[indexPath.row])
        case 14:
        cell.update(type: arraySubcategory15[indexPath.row])
        default:
            break
        }
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "<#T##String#>") as!
//
//    }
}
