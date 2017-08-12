//
//  SupplementInfoViewController.swift
//  ios_course
//
//  Created by Sergey on 8/12/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class SupplementInfoViewController: UIViewController {
    
    var supplement : Supplement?
    
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = supplement?.title
        contentLabel.text = supplement?.description
    }
    
}
