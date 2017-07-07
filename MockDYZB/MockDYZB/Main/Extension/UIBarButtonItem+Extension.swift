//
//  UIBarButtonItem+Extension.swift
//  MockDYZB
//
//  Created by yangwei on 07/07/2017.
//  Copyright © 2017 victor. All rights reserved.
//

import UIKit

public extension UIBarButtonItem {
    
    public convenience init(imageName: String, highLightImageName: String = "", size: CGSize = CGSize.zero) {
        let leftBarButton = UIButton(type: .custom)
        
        leftBarButton.setImage(UIImage(named: imageName), for: .normal)
        
        if highLightImageName != "" {
            leftBarButton.setImage(UIImage(named: highLightImageName), for: .highlighted)
        }
        
        if size == CGSize.zero {
            leftBarButton.sizeToFit()
        } else {
            leftBarButton.bounds = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        }
        
        self.init(customView: leftBarButton)
    }
    
}
