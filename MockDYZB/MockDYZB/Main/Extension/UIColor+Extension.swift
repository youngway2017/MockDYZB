//
//  UIColor+Extension.swift
//  MockDYZB
//
//  Created by yangwei on 07/07/2017.
//  Copyright © 2017 victor. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    convenience init(hexRgb: Int) {
        self.init(
            red: (hexRgb >> 16) & 0xFF,
            green: (hexRgb >> 8) & 0xFF,
            blue: hexRgb & 0xFF
        )
    }
    
    convenience init(hexRgb: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hexRgb >> 16) & 0xFF,
            green: (hexRgb >> 8) & 0xFF,
            blue: hexRgb & 0xFF,
            a: a
        )
    }
}
