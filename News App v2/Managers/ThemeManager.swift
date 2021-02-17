//
//  ThemeManager.swift
//  News App v2
//
//  Created by Jansen Ducusin on 2/16/21.
//

import Foundation
import UIKit

class ThemeManager{
    static func setup(){
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.backgroundColor = UIColor(red: 0.21, green: 0.23, blue: 0.28, alpha: 1.00)
        
        navigationBarAppearance.titleTextAttributes = [.foregroundColor:UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00)]
        navigationBarAppearance.largeTitleTextAttributes = [.foregroundColor:UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00)]
        
        UINavigationBar.appearance().tintColor = UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00)
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    }
}
