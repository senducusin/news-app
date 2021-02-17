//
//  NewsSourceResponse.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

struct NewsSourceResponse:  Decodable{
    let articles:   [Article]
}
