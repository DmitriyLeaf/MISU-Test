//
//  MainTabBarController.swift
//  CoronaVirTracker
//
//  Created by WH ak on 15.05.2020.
//  Copyright © 2020 CVTCompany. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    func setSelectedTab(index: Int, animated: Bool = true) {
        guard let viewC = self.viewControllers?[index] else { return }
        if animated {
            _ = self.tabBarController(self, shouldSelect: viewC)
            self.selectedViewController = viewC
        } else {
            selectedIndex = index
        }
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        tabBar.isTranslucent = false
        initTabs()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tabBar.isTranslucent = false
        initTabs()
    }
    
    func initTabs() {
        let tabVCs = MainTabBarStructEnum.allCases.map { tab -> UIViewController in
            return tab.viewController
        }
        setViewControllers(tabVCs, animated: false)
    }
}

extension MainTabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func setup() {
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = .white
            tabBar.standardAppearance = appearance
            tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
        
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
    }
}



// MARK: - UITabBarController Delegate
extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let fromView = selectedViewController?.view, let toView = viewController.view else {
            print("MainTabBarController: false")
            return false
        }
        
        if viewController.children.first(where: { ($0 as? AssistanceVC) != nil }) != nil {
            if !AssistanceController.shared.isActivated {
                let vc = PreAssistanceVC()
                vc.hidesBottomBarWhenPushed = true
                selectedViewController?.children.last?.navigationController?.present(vc, animated: true)
                return false
            }
        }
        
        if fromView != toView {
            UIView.transition(from: fromView, to: toView, duration: 0.1, options: [.transitionCrossDissolve], completion: nil)
        }
        
        return true
    }
}
