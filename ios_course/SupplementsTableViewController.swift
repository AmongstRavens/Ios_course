//
//  SupplementsTableViewController.swift
//  ios_course
//
//  Created by Sergey on 8/12/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class SupplementsTableViewController: UITableViewController {
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        if Cache.supplements.count != tableView.numberOfRows(inSection: 1){
//            tableView.reloadData()
//        }
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show Supplement Info"{
            let indexPath = sender as! IndexPath
            let destinationViewController = segue.destination as! SupplementInfoViewController
            destinationViewController.supplement = Cache.supplements[indexPath.row]
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cache.supplements.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Supplement Cell") as! SupplementTableViewCell
        cell.titleLabel.text = Cache.supplements[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Show Supplement Info", sender: indexPath)
    }


}
