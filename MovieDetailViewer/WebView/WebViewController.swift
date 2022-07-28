//
//  WebViewController.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    var destinationURL: String = "https://www.google.com"
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        openWebPage(to: destinationURL)
        searchBar.delegate = self
    }
    
    @IBAction func goBackButtonClicked(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    
    @IBAction func reloadButtonClicked(_ sender: Any) {
        webView.reload()
    }
    
    
    @IBAction func goForwardButtonClicked(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    func openWebPage(to urlStr: String) {
        guard let url = URL(string: urlStr) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
}

extension WebViewController:UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        openWebPage(to: searchBar.text!)
    }
}
