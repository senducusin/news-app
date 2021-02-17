//
//  NewsHeadlineTableViewController.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/16/21.
//

import Foundation
import UIKit

class NewsHeadlineTableViewController: UITableViewController{
    
    let news = [
        ["title":"Dummy Title",
         "description":"This is a sample description"],
        ["title":"Dummy Title Dummy Title Dummy Title Dummy Title",
         "description":"This is a sample description This is a sample description This is a sample description This is a sample description"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
    }
    
    private func setupUI(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension NewsHeadlineTableViewController{
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsHeadlineTableViewCell", for: indexPath) as? NewsHeadlineTableViewCell else {
            fatalError("NewsHeadlineTableViewCell not found! ")
        }
        
        cell.titleLabel.text = self.news[indexPath.row]["title"]!
        cell.descriptionLabel.text = self.news[indexPath.row]["description"]!
        
        return cell
    }
}
