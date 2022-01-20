//
//  ViewController.swift
//  project-7
//
//  Created by Bruno Guirra on 20/01/22.
//

import UIKit

class ViewController: UITableViewController {
    var petitions = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Petitions app"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()

        content.text = "Title goes here"
        content.secondaryText = "Subtitle goes here"

        cell.contentConfiguration = content

        
        return cell
    }
}

