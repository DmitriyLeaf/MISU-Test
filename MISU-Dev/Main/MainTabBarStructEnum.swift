//
//  MainTabBarStructEnum.swift
//  CoronaVirTracker
//
//  Created by WH ak on 15.05.2020.
//  Copyright © 2020 CVTCompany. All rights reserved.
//

import UIKit

enum MainTabBarStructEnum: Int, EnumKit, CaseIterable {
    case test = 0
    case assis = 1
    case test2 = 2
    case test3 = 3
    
    var viewController: UIViewController {
        switch self {
        default:
            let _vc = vc
            _vc.tabBarItem = tabBarItem
            return UINavigationController(rootViewController: _vc)
        }
    }
    
    var tabBarItem: UITabBarItem {
        let item = UITabBarItem(title: nil, image: image, selectedImage: selectedImage)
        item.tag = rawValue
        return item
    }
    
    var vc: UIViewController {
        switch self {
        case .assis:
            return AssistanceVC()
        default:
            return UICustomVC()
        }
    }
    
    var image: UIImage? {
        return UIImage(named: imageName)
    }
    
    var selectedImage: UIImage? {
        return UIImage(named: selectedImageName)
    }
    
    var imageName: String {
        switch self {
        default:
            return "default"
        }
    }
    
    var selectedImageName: String {
        switch self {
        default:
            return "defaultSelect"
        }
    }
    
    var localized: String {
        switch self {
        default:
            return self.key
        }
    }
}
