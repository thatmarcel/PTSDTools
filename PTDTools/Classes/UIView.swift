//
//  UIView.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 27/02/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    func addSubviews(_ views: UIView...) { views.forEach(addSubview) }
}
public extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) { views.forEach(addArrangedSubview) }
}