//
//  NewsHeadlineTableViewCell.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/16/21.
//

import Foundation
import UIKit

class NewsHeadlineTableViewCell:    UITableViewCell{
    
    @IBOutlet weak var titleLabel:  UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var headlineImageView:   UIImageView!
    
    func configure(vm: ArticleViewModel){
        self.titleLabel.text = vm.title
        self.descriptionLabel.text = vm.description
        vm.image{ self.headlineImageView.image = $0 }
    }
    
}
