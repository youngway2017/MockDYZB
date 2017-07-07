//
//  UIColor+Extension.swift
//  MockDYZB
//
//  Created by yangwei on 07/07/2017.
//  Copyright © 2017 victor. All rights reserved.
//

import UIKit

public extension UIColor {
    // MARK: - 便利构造函数
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
    }
    
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat, a: CGFloat = 1.0) {
        self.init(
            red: red / 255.0,
            green: green / 255.0,
            blue: blue / 255.0,
            alpha: a
        )
    }
    
    convenience init(hexRgb: Int) {
        self.init(
            red: CGFloat((hexRgb >> 16) & 0xFF),
            green: CGFloat((hexRgb >> 8) & 0xFF),
            blue: CGFloat(hexRgb & 0xFF)
        )
    }
    
    convenience init(hexRgb: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hexRgb >> 16) & 0xFF),
            green: CGFloat((hexRgb >> 8) & 0xFF),
            blue: CGFloat(hexRgb & 0xFF),
            a: a
        )
    }
    
    // MARK: - 类方法，生成随机色
    class func randomColor() -> UIColor {
        let red = CGFloat(arc4random() % 255)
        let green = CGFloat(arc4random() % 255)
        let blue = CGFloat(arc4random() % 255)
        return UIColor(red: red, green: green, blue: blue)
    }
}
