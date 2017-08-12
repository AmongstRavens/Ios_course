//
//  ViewController.swift
//  ios_course
//
//  Created by Sergey on 8/12/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class AddSupplementViewController: UIViewController {
    var supplement : Supplement?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    
    @IBAction func AddSupplement(_ sender: UIButton) {
        supplement = Supplement(title: titleTextField.text, content: contentTextField.text)
        SupplementsCache.supplements.append(supplement!)
        print(SupplementsCache.supplements.count)
    }
    
}

