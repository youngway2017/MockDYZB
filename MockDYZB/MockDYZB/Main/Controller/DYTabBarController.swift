//
//  DYTabBarController.swift
//  MockDYZB
//
//  Created by yangwei on 07/07/2017.
//  Copyright © 2017 victor. All rights reserved.
//

import UIKit

class DYTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange], for: .selected)
        
        setupViewControllers()
    }

    
    private func setupViewControllers() {
        
        tabBar.backgroundColor = UIColor(red: 251, green: 251, blue: 251, alpha: 1)

        let homeController = DYHomeViewController()
        let newLiveController = DYNewLiveViewController()
        let attentionController = DYAttentionViewController()
        let discoverController = DYDiscoveryViewController()
        let userController = DYUserViewController()
        
        homeController.tabBarItem.image = UIImage(named: "tabHome_24x24_")
        homeController.tabBarItem.selectedImage = UIImage(named: "tabHomeHL_24x24_")
        
        newLiveController.tabBarItem.image = UIImage(named: "tabLiving_24x24_")
        newLiveController.tabBarItem.selectedImage = UIImage(named: "tabLivingHL_24x24_")
        
        attentionController.tabBarItem.image = UIImage(named: "tabFocus_24x24_")
        attentionController.tabBarItem.selectedImage = UIImage(named: "tabFocusHL_24x24_")
        
        discoverController.tabBarItem.image = UIImage(named: "tabDiscovery_24x24_")
        discoverController.tabBarItem.selectedImage = UIImage(named: "tabDiscoveryHL_24x24_")
        
        userController.tabBarItem.image = UIImage(named: "tabMine_24x24_")
        userController.tabBarItem.selectedImage = UIImage(named: "tabMineHL_24x24_")
        
        homeController.tabBarItem.title = "首页"
        newLiveController.tabBarItem.title = "直播"
        attentionController.tabBarItem.title = "关注"
        discoverController.tabBarItem.title = "发现"
        userController.tabBarItem.title = "我的"
        
        viewControllers = [homeController,newLiveController,attentionController,discoverController,userController]
    }

}
