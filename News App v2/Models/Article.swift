//
//  Article.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

struct Article: Decodable {
    
    let title:  String
    let description:    String?
    let url:    String?
    let imageURL:   String?
    let sourceName: String
    
    private enum ArticleKeys:    String, CodingKey{
        case title
        case description
        case url
        case imageURL = "urlToImage"
        case source
    }
    
    private enum SourceKeys: String, CodingKey {
        case name
    }
    
    // To flatten the model. sourceName is located inside a container called source, inside the article container.
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ArticleKeys.self)
        
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try? container.decode(String.self, forKey: .description)
        self.url = try? container.decode(String.self, forKey: .url)
        self.imageURL = try? container.decode(String.self, forKey: .imageURL)
        
        let sourceContainer = try container.nestedContainer(keyedBy: SourceKeys.self, forKey: .source)
        self.sourceName = try sourceContainer.decode(String.self, forKey: .name)
    }
}

extension Article {
    
    static func by(_ categoryName:  String) -> Resource<[Article]>{
        
        return Resource<[Article]>(url: URL.urlForTopHeadlines(for: categoryName)){ data in
            return try? JSONDecoder().decode(NewsSourceResponse.self, from: data).articles
        }
        
    }
    
}
