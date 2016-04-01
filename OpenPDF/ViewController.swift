//
//  ViewController.swift
//  OpenPDF
//
//  Created by gdql－Apple on 16/4/1.
//  Copyright © 2016年 李坚武. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //按钮点击触摸事件

    @IBAction func OpenPDF(sender: AnyObject) {
        let url = NSBundle.mainBundle().URLForResource("Alice_In_Wonderland", withExtension: "pdf")
        
        if let url = url {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = NSURLRequest(URL: url)
            webView.loadRequest(urlRequest)
            
            view.addSubview(webView)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

