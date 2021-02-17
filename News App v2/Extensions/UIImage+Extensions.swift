//
//  UIImage+Extensions.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation
import UIKit

extension UIImage {
    
    static func imageForPlaceholder() -> UIImage {
        return UIImage(systemName: "photo.fill")!
    }
    
    static func imageForHeadline(url: String, completion:@escaping(UIImage) -> ()){
        guard let imageURL = URL(string: url) else {
            DispatchQueue.main.async {
                completion(UIImage.imageForPlaceholder())
            }
            return
        }
        
        if let data = try? Data(contentsOf: imageURL){
            if let downloadImage = UIImage(data: data) {
                DispatchQueue.main.async {
                    completion(downloadImage)
                }
            }
        }
    }
}
