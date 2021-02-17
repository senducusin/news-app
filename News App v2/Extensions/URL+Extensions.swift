//
//  URL+Extensions.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

extension URL {
    
    static func urlForTopHeadlines(for categoryName: String) -> URL {
        
        let const = Constants()
        
        return URL(string: "https://newsapi.org/v2/top-headlines?category=\(categoryName)&country=\(const.newsCountrySource)&apiKey=\(const.apiKey)")!
    }
    
}
