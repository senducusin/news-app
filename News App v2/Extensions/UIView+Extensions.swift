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
        
        let subtitleLabel = UILabel(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.width, height: 44)))
        
        subtitleLabel.text = title
        subtitleLabel.textAlignment = .center
        subtitleLabel.textColor = .gray
        
        substitleView.addSubview(subtitleLabel)
        return substitleView
    }
}
