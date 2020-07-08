//
//  UIColor.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 02/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        return (r, g, b, a)
    }
    
    var hsba: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return (h, s, b, a)
    }
    
    var recommendedTextColor: UIColor {
        if (rgba.red + rgba.blue + rgba.green) < 1.6 {
            return .white
        } else {
            return .black
        }
    }
    
    var darkerColor: UIColor {
        UIColor(red: max(0, rgba.red - 0.2), green: max(0, rgba.green - 0.2), blue: max(0, rgba.blue - 0.2), alpha: rgba.alpha)
    }
}
