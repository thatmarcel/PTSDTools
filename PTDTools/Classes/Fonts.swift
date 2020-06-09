//
//  Fonts.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 31/12/2019.
//  Copyright © 2019 Patrik Svoboda. All rights reserved.
//

import Foundation
import UIKit

public extension UIFont {
    @available(iOS 13, tvOS 13, *)
    static func system(design: UIFontDescriptor.SystemDesign, size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let font = UIFont.systemFont(ofSize: size, weight: weight)
        let fontDescriptor = font.fontDescriptor.withDesign(design)!
        return UIFont(descriptor: fontDescriptor, size: size)
    }
    
    static func roundedFont(ofSize size: CGFloat, weight: UIFont.Weight = .medium) -> UIFont {
        if #available(iOS 13.0, tvOS 13, *) {
            return .system(design: .rounded, size: size, weight: weight)
        } else {
            return .systemFont(ofSize: size, weight: weight)
        }
    }
    static var smallTitleRoundedFont: UIFont {
        #if !os(tvOS)
        return .roundedFont(ofSize: 17, weight: .semibold)
        #else
        return .roundedFont(ofSize: 57, weight: .bold)
        #endif
    }
    static var roundedLabel: UIFont {
        #if !os(tvOS)
        return .roundedFont(ofSize: 17)
        #else
        return .roundedFont(ofSize: 38)
        #endif
    }
    
    static var largeTitleRoundedFont: UIFont { .roundedFont(ofSize: 34, weight: .bold) }
}
