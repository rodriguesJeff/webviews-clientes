//
//  ViewController.swift
//  multinivel modas
//
//  Created by Jefferson Rodrigues on 10/10/20.
//  Copyright © 2020 Moby Delivery. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView : WKWebView!
    
    override func loadView(){
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        let myUrl = URL(string:"https://multinivelmodas.baptistsoftware.com.br/")
        let myRequest = URLRequest(url: myUrl!)
        webView.load(myRequest)
        
    }


}
