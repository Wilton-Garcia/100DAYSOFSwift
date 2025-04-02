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
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("cr_"){
                flags.append(item)
                print(item)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        flags.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let customCell = tableView.dequeueReusableCell(withIdentifier: "Countries") as? CustomCellViewController
        else { return UITableViewCell() }
        
            customCell.countriName.text = flags[indexPath.row]
                .replacingOccurrences(of: "cr_" , with: "")
                .replacingOccurrences(of: ".png" , with: "")
                .uppercased()
            
            customCell.flagImage.image = UIImage(named: flags[indexPath.row])
            
            return customCell
            
    }
}
    
