//
//  ArticleViewModel.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation
import UIKit

struct ArticleViewModel {
    private(set) var article: Article
}

extension ArticleViewModel {
    init(_ article: Article){
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return article.title
    }
    
    var description: String? {
        return article.description
    }
    
    func image(completion: @escaping(UIImage?)->()){
        guard let imageURL = article.imageURL else {
            completion(nil)
            return
        }
        
        UIImage.imageForHeadline(url: imageURL) {image in
            DispatchQueue.main.async {
                completion(image)
            }
        }
        
    }
}
