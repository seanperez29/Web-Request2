//
//  ViewController.swift
//  Web Request
//
//  Created by Sean Perez on 4/25/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    func loadRequest(urlStr: String) {
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
    }

    @IBAction func loadSwift(sender: AnyObject) {
        
        loadRequest("https://developer.apple.com/swift/blog/")
    }

    @IBAction func loadGossip(sender: AnyObject) {
        
        loadRequest("http://www.foxsports.com/ufc/story/ufc-dana-white-conor-mcgregor-tweet-still-not-fighting-at-ufc-200-042516")
    }
    
    @IBAction func loadTesla(sender: AnyObject) {
        
        loadRequest("https://www.teslamotors.com")
    }
}

