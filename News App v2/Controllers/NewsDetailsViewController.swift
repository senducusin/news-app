//
//  NewsDetailsViewController.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation
import UIKit
import WebKit

class NewsDetailsViewController: UIViewController{
    var article: Article!
    private var newsDetailsVM: NewsDetailsViewModel!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    private func setupUI(){
        self.newsDetailsVM = NewsDetailsViewModel(article)
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = self.newsDetailsVM.sourceName
        
        guard let url = self.newsDetailsVM.url,
              let newsDetailUrl = URL(string: url) else {
            return
        }
        
        let request = URLRequest(url: newsDetailUrl)
        self.webView.load(request)
    }
}
