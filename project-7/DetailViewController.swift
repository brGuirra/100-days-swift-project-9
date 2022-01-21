//
//  DetailViewController.swift
//  project-7
//
//  Created by Bruno Guirra on 21/01/22.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detaildItem: Petition?
    
    override func loadView() {
        webView = WKWebView()        
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detaildItem = detaildItem else {
            return
        }

        let html = """
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <style>
                    body { font-size: 150%; }
                </style>
            </head>
            <body>
                \(detaildItem.body)
            </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
    }
}
