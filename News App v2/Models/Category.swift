//
//  Category.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

struct Category {
    let title:  String
    let articles:  [Article]
    
    static func all() -> [String]{
        return ["Business", "Entertainment", "General", "Sports"]
    } 
}
