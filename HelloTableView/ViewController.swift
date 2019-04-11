//
//  ViewController.swift
//  HelloTableView
//
//  Created by 曹炎平 on 2019/4/11.
//  Copyright © 2019 Peter. All rights reserved.
//

import UIKit
var rolesArray = ["小飛象", "小老鼠", "馬戲團帳篷", "花生", "羽毛"]

class ViewController: UIViewController, UITableViewDataSource, UITextViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rolesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = rolesArray[indexPath.row]
        cell.imageView?.image = UIImage(named: rolesArray[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

