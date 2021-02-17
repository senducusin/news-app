//
//  NewsHeadlineTableViewController.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/16/21.
//

import Foundation
import UIKit

class NewsHeadlineTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
        self.populateHeadlinesAndArticles()
    }
    
    private func populateHeadlinesAndArticles(){
        CategoryService().getAllHeadlinesForAllCategories(){ categories in
            
            print(categories)
            
        }
    }
    
    private func setupUI(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension NewsHeadlineTableViewController{
    
}
