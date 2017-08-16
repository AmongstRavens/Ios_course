//
//  SupplementInfoViewController.swift
//  ios_course
//
//  Created by Sergey on 8/12/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class SupplementInfoViewController: UIViewController {
    
    
    @IBOutlet weak var conentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var supplement : Supplement?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let supp = supplement{
            conentLabel.text = supp.content
            titleLabel.text = supp.title
        }
        conentLabel.sizeToFit()
    }
}
