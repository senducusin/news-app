//
//  NewsDetailsViewModel.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

struct NewsDetailsViewModel{
    let article: Article
}

extension NewsDetailsViewModel{
    init(_ article: Article){
        self.article = article
    }
}

extension NewsDetailsViewModel {
    var sourceName: String {
        return self.article.sourceName
    }
    
    var url: String?{
        return self.article.url
    }
}
