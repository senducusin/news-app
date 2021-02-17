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
            completion(UIImage.imageForPlaceholder())
            return
        }
        
        DispatchQueue.main.async {
            if let data = try? Data(contentsOf: imageURL){
                if let downloadImage = UIImage(data: data) {
                    completion(downloadImage)
                }
            }
        }
    }
}
