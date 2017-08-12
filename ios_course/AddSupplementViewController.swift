//
//  ViewController.swift
//  ios_course
//
//  Created by Sergey on 8/12/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class AddSupplementViewController: UIViewController {
    var supplement : Supplement?{
        didSet{
            Cache.supplements.append(supplement!)
            let controllersCount = self.navigationController?.viewControllers.count
            if let tableVC = self.navigationController?.viewControllers[controllersCount! - 2] as? SupplementsTableViewController{
                tableVC.tableView.reloadData()
            }
        }
    }
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    
    @IBAction func AddSupplement(_ sender: UIButton) {
        supplement = Supplement(title: titleTextField.text!, description: contentTextField.text!, lecture: nil, timeStamp : nil)
    }
    
}

