//
//  TabBarController.swift
//  BotShopIOS
//
//  Created by Student Laptop_7/19_1 on 1/15/21.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{

    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupViewControllers()
        setupTabBarIcons()
//        Changing Tabbar Color
        self.tabBar.tintColor = UIColor(red:0.49, green:0.84, blue:0.87, alpha:1.0)
    }

    
    func setupTabBarIcons(){

        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]

        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center

        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
    }
    
    
    func setupViewControllers(){

        let newBoxVC = NewOrderViewController()
        let navController1 = UINavigationController(rootViewController:newBoxVC)
        newBoxVC.tabBarItem = UITabBarItem(title: "New", image: UIImage(named: "tab-box"), tag: 0)

        let pastBoxesVC = PastOrderViewController()
        let navController2 = UINavigationController(rootViewController:pastBoxesVC)
        pastBoxesVC.tabBarItem = UITabBarItem(title: "History", image: UIImage(named: "tab-history"), tag: 1)

        viewControllers = [navController1, navController2]
    }
}
