//
//  ViewController.swift
//  Categories
//
//  Created by Даниил Чупайда on 4/23/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var Table: UITableView!
    var arrayList: [ItemType] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Table.delegate = self
        Table.dataSource = self
        
        let listCell = UINib(nibName: "ListCell", bundle: nil)
        Table.register(listCell, forCellReuseIdentifier: "ListCell")
        
        _ = ItemType.test1
        _ = ItemType.test2
        _ = ItemType.test3
        
        arrayList.append(.test1)
        arrayList.append(.test2)
        arrayList.append(.test3)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 107
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Table.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! ListCell
        cell.update(type: arrayList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }

}

