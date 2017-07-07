//
//  DYHomeViewController.swift
//  MockDYZB
//
//  Created by yangwei on 07/07/2017.
//  Copyright © 2017 victor. All rights reserved.
//

import UIKit

class DYHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
        
        view.backgroundColor = UIColor.white
    }

    private func setupNavigation() {
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(color: UIColor(hexRgb: 0xFF7700)), for: .default)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "homeLogoIcon_61x29_")
        
        let historyBarButtonItem = UIBarButtonItem(imageName: "viewHistoryIcon_24x24_", highLightImageName: "viewHistoryIconHL_24x24_", size: CGSize(width: 30, height: 29))
        
        let newGameBarButtonItem = UIBarButtonItem(imageName: "home_newGameicon_24x24_", highLightImageName: "home_newGameicon_clicked_24x24_", size: CGSize(width: 30, height: 29))
        
        navigationItem.rightBarButtonItems = [historyBarButtonItem,newGameBarButtonItem]
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
