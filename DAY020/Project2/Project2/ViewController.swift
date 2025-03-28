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
    var correctAnswer = 0
    var questionsAnswerd = 0
    

    
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
    
    func askQuestion(action: UIAlertAction! = nil) {
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = "CHOSE THE \(countries[correctAnswer].uppercased()), SCORE IS \(score)"
      
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        questionsAnswerd += 1
        
        var title: String
        
        if sender.tag == correctAnswer {
            score += 1
            title = (questionsAnswerd < 10 ? "Correct" : "Congratulations your final score is \(score))")
            
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        
        present(ac, animated: true)
    }
    
}

