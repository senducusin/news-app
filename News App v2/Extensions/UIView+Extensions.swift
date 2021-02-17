//
//  UIView+Extensions.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/17/21.
//

import Foundation
import UIKit

extension UIView {
    static func viewForTableViewHeader(title: String) -> UIView {
        let screenRect = UIScreen.main.bounds
        let substitleView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.size.width, height: 44)))
        substitleView.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00)
        
        let subtitleLabel = UILabel(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.width, height: 44)))
        
        subtitleLabel.text = title
        subtitleLabel.textAlignment = .center
        subtitleLabel.textColor = .lightGray
        
        substitleView.addSubview(subtitleLabel)
        return substitleView
    }
    
    static func viewForSectionHeader(title: String) -> UIView {
        let screenRect = UIScreen.main.bounds
        
        let headerView = UIView(frame: CGRect(x: 15, y: 0, width: screenRect.width, height: 60))
        headerView.backgroundColor = .white
        
        let sectionHeaderLabel = UILabel(frame: headerView.frame)
        sectionHeaderLabel.text = title.uppercased()
        sectionHeaderLabel.textColor = UIColor(red: 0.00, green: 0.66, blue: 1.00, alpha: 1.00)
        sectionHeaderLabel.font = UIFont.fontForSectionHeaderTitle()
        
        headerView.addSubview(sectionHeaderLabel)
        return headerView
    }
}
