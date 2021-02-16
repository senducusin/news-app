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
        navigationBarAppearance.backgroundColor = .darkGray
        
        navigationBarAppearance.titleTextAttributes = [.foregroundColor:UIColor.white]
        navigationBarAppearance.largeTitleTextAttributes = [.foregroundColor:UIColor.white]
        
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    }
}
