//
//  UIWebViewController.swift
//  Dexi
//
//  Created by jack on 17/2/10.
//  Copyright © 2017年 jack. All rights reserved.
//

import UIKit

class UIWebViewController: UIViewController {
    
    var lianjiezhi: shuzu!
    
    
    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var juhua: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.delegate = self
        juhua.startAnimating()
        if let url = NSURL(string: lianjiezhi.src){
            webview.loadRequest(NSURLRequest(URL: url))
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIWebViewController: UIWebViewDelegate {
    
    func webViewDidFinishLoad(webView: UIWebView) {
        juhua.stopAnimating()
    }
}