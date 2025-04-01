//
//  ViewController.swift
//  Day023
//
//  Created by Wilton Garcia on 31/03/25.
//

import UIKit

class ListViewController: UITableViewController {
    
 
    
    var flags = [String]()
    
    
    override func viewDidLoad() {
        
        title = "Challange"
        
        super.viewDidLoad()
        var fm = FileManager.default
        var path = Bundle.main.resourcePath!
        var items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("@3x") {
                flags.append(item)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Countries", for: indexPath)
        
        cell.textLabel?.text = flags[indexPath.row]
        
        return cell
    }
    
    
}

