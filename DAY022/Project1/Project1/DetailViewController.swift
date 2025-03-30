//
//  DetailViewController.swift
//  Project1
//
//  Created by Wilton Garcia on 25/03/25.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectImage: String?
    var numberOfImages: Int?
    var imageNumber: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageNumber, let numberOfImages {
            title = "Pictere \(imageNumber) of  \(numberOfImages)"
        }
    
        navigationItem.largeTitleDisplayMode = .never
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self , action: #selector(shareImage))

        if let imageToLoad = selectImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareImage() {
        guard let image = imageView.image?.jpegData(compressionQuality: 1),
              let selectImage  else  {
            print("Error sharing image")
            return
        }
  
        
        let vc = UIActivityViewController(activityItems: [selectImage, image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
        
    }

}
