//
//  CustomCell.swift
//  Day023
//
//  Created by Wilton Garcia on 01/04/25.
//

import Foundation
import UIKit

class CustomCellViewController: UITableViewCell {
    
    @IBOutlet var countriName: UILabel!
    @IBOutlet var flagImage: UIImageView!
    
    static let identifier = "Countries"

    static func nib() -> UINib {
      return UINib(nibName: "Countries", bundle: nil)
    }

}
