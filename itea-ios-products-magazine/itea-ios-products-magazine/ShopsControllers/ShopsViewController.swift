//
//  ShopsViewController.swift
//  itea-ios-products-magazine
//
//  Created by admin on 4/27/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class ShopsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var nameUserLabel: UILabel!
    @IBOutlet weak var avatarUserImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var arrayTypes: [ShopsType] = []
    
    var nameUser = "<nameUser>"
    var avatarUser = "default"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myStoryboard = UIStoryboard(name: "Shops", bundle: nil)
        let vcForMyStoryboard = myStoryboard.instantiateViewController(withIdentifier: "ShopsViewController") as! ShopsViewController
        
        aroundUserImage()
        
        avatarUserImageView.image = UIImage(named: avatarUser)
        nameUserLabel.text = nameUser
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let listCell = UINib(nibName: "ListShopsCell", bundle: nil)
        tableView.register(listCell, forCellReuseIdentifier: "ListShopsCell")
        
        
        arrayTypes.append(.atb)
        arrayTypes.append(.silpo)
        arrayTypes.append(.billa)
        arrayTypes.append(.fora)
        arrayTypes.append(.metro)
        arrayTypes.append(.ashan)
        arrayTypes.append(.novus)
        
        tableView.reloadData()
    }
    
    
//    func storyboard() {
//        let myStoryboard = UIStoryboard(name: "Shops", bundle: nil)
//        let vcForMyStoryboard = myStoryboard.instantiateViewController(withIdentifier: "ShopsViewController") as! ShopsViewController
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTypes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListShopsCell", for: indexPath) as! ListShopsCell
        cell.update(type: arrayTypes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = storyboard?.instantiateViewController(withIdentifier: "Categories") as! Categories
        vc.shopName = ShopsType.returnNameType(type: arrayTypes[indexPath.row])
        vc.userImageName = avatarUser
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    @IBAction func didTapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func aroundUserImage() {
        avatarUserImageView.layer.cornerRadius = avatarUserImageView.frame.size.width / 2
        avatarUserImageView.clipsToBounds = true
    }
    
}
