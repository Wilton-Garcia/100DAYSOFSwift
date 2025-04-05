//
//  ViewController.swift
//  Project4
//
//  Created by Wilton Garcia on 04/04/25.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(tapBarButton))
        
        let url = URL(string: "https://www.nintendo.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }
    
    @objc func tapBarButton() {
        let ac = UIAlertController(title: "Open page", message: nil, preferredStyle: .actionSheet)
        
        ac.addAction(UIAlertAction(title: "www.playstation.com", style: .default, handler: (openPage)))
        ac.addAction(UIAlertAction(title: "www.xbox.com", style: .default, handler: (openPage)))
        ac.addAction(UIAlertAction(title: "www.nintendo.com", style: .default, handler: (openPage)))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        ac.popoverPresentationController?.barButtonItem = self.navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }

    func openPage(action: UIAlertAction) {
        guard let actionTitle = action.title else { return }
        guard let url = URL(string: "https://"+actionTitle) else { return }
        
        webView.load(URLRequest(url: url))
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

}

extension ViewController: WKNavigationDelegate {}
