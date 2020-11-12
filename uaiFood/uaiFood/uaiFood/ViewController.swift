//
//  ViewController.swift
//  uaiFood
//
//  Created by Jefferson Rodrigues on 21/09/20.
//  Copyright © 2020 Moby Delivery. All rights reserved.
//

import WebKit
import UIKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView : WKWebView!
    
    override func loadView(){
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:"https://adminuaifood.online/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        // Do any additional setup after loading the view.
    }


}

