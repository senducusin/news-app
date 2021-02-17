//
//  CategoryViewModel.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

struct CategoryViewModel {
    let name:   String
    let articles:   [Article]
}

extension CategoryViewModel {
    func articleAtIndex(index: Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}
