//
//  ArticleViewModel.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation
import UIKit
import Kingfisher

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
        guard let urlString = article.imageURL else {
            completion(UIImage.imageForPlaceholder())
            return
        }
        
        guard let imageUrl = URL.init(string: urlString) else {
            return  completion(UIImage.imageForPlaceholder())
        }
        
        let resource = ImageResource(downloadURL: imageUrl)
                
        KingfisherManager.shared.retrieveImage(with: resource, options: [
            .scaleFactor(UIScreen.main.scale),
            .transition(.fade(1)),
            .cacheOriginalImage
        ], progressBlock: nil) { result in
            switch result {
            case .success(let value):
                completion(value.image)
            case .failure:
                completion(nil)
            }
        }
        
    }
}
