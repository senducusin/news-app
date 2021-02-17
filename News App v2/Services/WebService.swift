//
//  WebService.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation

struct Resource<T>{
    let url:    URL
    let parse:  (Data) -> T?
}

class WebService{
    func load<T>(_ resource: Resource<T>, completion: @escaping (T?)->()){
        URLSession.shared.dataTask(with: resource.url){ data, response, error in
            
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            }else{
                completion(nil)
            }
            
        }.resume()
        
    }
}
