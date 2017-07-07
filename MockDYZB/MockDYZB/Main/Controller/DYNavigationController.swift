//
//  DYNavigationController.swift
//  MockDYZB
//
//  Created by yangwei on 07/07/2017.
//  Copyright © 2017 victor. All rights reserved.
//

import UIKit

class DYNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override var childViewControllerForStatusBarStyle: UIViewController? {
        return self.topViewController
    }


}
