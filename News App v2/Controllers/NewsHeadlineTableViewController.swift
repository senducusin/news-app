//
//  NewsHeadlineTableViewController.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/16/21.
//

import Foundation
import UIKit

class NewsHeadlineTableViewController: UITableViewController{
    
    private var categoryListVM: CategoryListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
        self.populateHeadlinesAndArticles()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NewsDetailsViewController"{
            prepareSegueForNewsDetails(segue)
        }
        
    }
    
    private func prepareSegueForNewsDetails(_ segue: UIStoryboardSegue){
        guard let newsDetailsVC = segue.destination as? NewsDetailsViewController else {
            fatalError("NewsDetailsVC is not defined")
        }
        
        guard let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("Unable to get the selected row")
        }
        
        let articleVM = self.categoryListVM.categoryAtIndex(index: indexPath.section).articleAtIndex(index: indexPath.row)
        
        newsDetailsVC.article = articleVM.article
    }
    
    private func populateHeadlinesAndArticles(){
        CategoryService().getAllHeadlinesForAllCategories(){ [weak self] categories in
            
            self?.categoryListVM = CategoryListViewModel(categories: categories)
            self?.tableView.reloadData()
            
        }
    }
    
    private func setupUI(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tableView.tableHeaderView = UIView.viewForTableViewHeader(title:Date().formatAsString())
    }
}

extension NewsHeadlineTableViewController{
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.categoryListVM == nil ? 0 : self.categoryListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoryListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsHeadlineTableViewCell", for: indexPath) as? NewsHeadlineTableViewCell else {
            fatalError("NewsHeadlineTableViewCell not found!")
        }
        
        let articleVM = self.categoryListVM.categoryAtIndex(index: indexPath.section).articleAtIndex(index: indexPath.row)
        
        cell.configure(vm: articleVM)
//        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let name = self.categoryListVM.categoryAtIndex(index: section).name
        return UIView.viewForSectionHeader(title: name)
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return categoryListVM.heightForHeaderInSection(section)
    }
}
