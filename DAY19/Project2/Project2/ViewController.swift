//
//  ViewController.swift
//  Project2
//
//  Created by Wilton Garcia on 27/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += [
            "estonia", "france", "germany", "ireland",
            "italy", "monaco", "nigeria", "poland",
            "russia", "spain", "uk", "us"
        ]
        
        customizeButton()
        
        askQuestion()
    }
    
    
    func customizeButton() {
        button1.layer.borderWidth = 2
        button2.layer.borderWidth = 2
        button3.layer.borderWidth = 2
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        button1.layer.shadowRadius = 2
        button2.layer.shadowRadius = 2
        button3.layer.shadowRadius = 2
    }
    
    func askQuestion() {
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
    
}

