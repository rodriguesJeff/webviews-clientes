//
//  ViewController.swift
//  mobydelivery
//
//  Created by Jefferson Rodrigues on 20/09/20.
//  Copyright © 2020 Moby Delivery. All rights reserved.
//

import WebKit
import UIKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView : WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string:"https://mobydelivery.app.br/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}
