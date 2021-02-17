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
    
    private enum CodingKeys:    String, CodingKey{
        case title
        case description
        case url
        case imageURL = "urlToImage"
    }
    
}
