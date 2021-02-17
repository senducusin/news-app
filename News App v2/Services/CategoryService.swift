//
//  CategoryService.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

class CategoryService {
    
    func getAllHeadlinesForAllCategories(completion:@escaping([Category])->()){
        
        var categories = [Category]()
        var requestCount = 0
        let categoriesCount = Category.all().count
        
        Category.all().forEach() { categoryName in
            
            WebService().load(Article.by(categoryName)){ articles in
                
                requestCount += 1
                
                guard let articles = articles else {
                    return
                }
                
                let category = Category(title: categoryName, articles: articles)
                categories.append(category)
                
                if requestCount == categoriesCount {
                    DispatchQueue.main.async {
                        completion(categories)
                    }
                }
            }
        
        }
        
    }
}
