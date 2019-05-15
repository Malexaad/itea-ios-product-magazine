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
    var categoryName: Int?
   // var categoryName = 3
    
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
        tableView.reloadData()
        switch categoryName {
        case 0:
            nameCategory.text = "Морепродукты"
        case 1:
            nameCategory.text = "Молочные продукты"
        case 2:
            nameCategory.text = "Овощи, фрукты"
        case 3:
            nameCategory.text = "Снеки"
        case 4:
            nameCategory.text = "Напитки"
        default:
            nameCategory.text = "No name"
        }
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        switch categoryName {
        case 0:
            return 3
        case 1:
            return 3
        case 2:
            return 4
        case 3:
            return 2
        case 4:
            return 3
        default:
            return 15
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch categoryName {
        case 0:
            //var index = section
            if section == 0 {
                return arraySubcategory1.count
            }
            if section == 1 {
              return arraySubcategory2.count
            } else {
              return arraySubcategory3.count
            }
        case 1:
            if section == 0 {
                return arraySubcategory4.count
            }
            if section == 1 {
                return arraySubcategory5.count
            } else {
                return arraySubcategory6.count
            }
        case 2:
            if section == 0 {
                return arraySubcategory7.count
            }
            if section == 1 {
                return arraySubcategory8.count
            }
            if section == 2 {
                return arraySubcategory9.count
            }
            else {
                return arraySubcategory10.count
            }
        case 3:
            if section == 0 {
                return arraySubcategory11.count
            }
            if section == 1 {
                return arraySubcategory12.count
            }
        case 4:
            if section == 0 {
                return arraySubcategory13.count
            }
            if section == 1 {
                return arraySubcategory14.count
            } else {
                return arraySubcategory15.count
            }
        default:
           break
        }
        return categoryName
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch categoryName {
        case 0:
            if section == 0 {
                return "Икра красная"
            }
            if section == 1 {
                return "Икра черная"
            } else {
                return "Красная рыба"
            }
        case 1:
            if section == 0 {
                return "Молоко"
            }
            if section == 1 {
                return "Сыры"
            } else {
                return "Мороженое"
            }
        case 2:
            if section == 0 {
                return "Фрукты"
            }
            if section == 1 {
                return "Овощи"
            }
            if section == 2 {
                return "Зелень"
            }
            else {
                return "Орехи"
            }
        case 3:
            if section == 0 {
                return "Сухарики"
            }
            if section == 1 {
                return "Чипсы"
            }
        case 4:
            if section == 0 {
                return "Алкоголь"
            }
            if section == 1 {
                return "Вода"
            } else {
                return "Соки"
            }
        default:
            break
        }
    return "No name"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        switch categoryName {
        case 0:
            //var index = section
            if indexPath.section == 0 {
                cell.update(type: arraySubcategory1[indexPath.row])
            }
            if indexPath.section == 1 {
                cell.update(type: arraySubcategory2[indexPath.row])
            } else {
                cell.update(type: arraySubcategory3[indexPath.row])
            }
        case 1:
            if indexPath.section == 0 {
                cell.update(type: arraySubcategory4[indexPath.row])
            }
            if indexPath.section == 1 {
                cell.update(type: arraySubcategory5[indexPath.row])
            } else {
                cell.update(type: arraySubcategory6[indexPath.row])
            }
        case 2:
            if indexPath.section == 0 {
                cell.update(type: arraySubcategory7[indexPath.row])
            }
            if indexPath.section == 1 {
                cell.update(type: arraySubcategory8[indexPath.row])
            }
            if indexPath.section == 2 {
                cell.update(type: arraySubcategory9[indexPath.row])
            }
            else {
                cell.update(type: arraySubcategory10[indexPath.row])
            }
        case 3:
            if indexPath.section == 0 {
                cell.update(type: arraySubcategory11[indexPath.row])
            }
            if indexPath.section == 1 {
                cell.update(type: arraySubcategory12[indexPath.row])
            }
        case 4:
            if indexPath.section == 0 {
                cell.update(type: arraySubcategory13[indexPath.row])
            }
            if indexPath.section == 1 {
                cell.update(type: arraySubcategory14[indexPath.row])
            } else {
                cell.update(type: arraySubcategory15[indexPath.row])
            }
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
