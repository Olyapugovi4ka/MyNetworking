//
//  WebViewController.swift
//  MyNetworking
//
//  Created by MacBook on 08/10/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var selectedCourse: String?
    var courseURL = ""
    
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

//        title = selectedCourse
//        
//        guard let url = URL(string: courseURL) else { return }
//        let request =  URLRequest(url: url)
//        
//        webView.load(request)
//        webView.allowsBackForwardNavigationGestures = true
//        webView.navigationDelegate = self
//        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new
//            , context: nil)
   }
//
//    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        <#code#>
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
