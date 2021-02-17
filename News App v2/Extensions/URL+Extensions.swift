//
//  URL+Extensions.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

extension URL {
    
    static func urlForTopHeadlines(for categoryName: String) -> URL {
        return URL(string: "https://newsapi.org/v2/top-headlines?category=\(categoryName)&apiKey=\(Constants().apiKey)")!
    }
    
}
