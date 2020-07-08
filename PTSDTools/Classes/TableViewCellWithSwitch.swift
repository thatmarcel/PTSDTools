//
//  TableViewCellWithSwitch.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 30/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import UIKit
import Cartography

open class TableViewCellWithSwitch: TableViewCell, Tintable {

    #if !os(tvOS)
    public let accessorySwitch = UISwitch()
    #else
    public let isOnLabel: UILabel = {
        let label = UILabel()
        label.textColor = CC.secondaryLabel
        return label
    }()
    #endif
    
    override open func setupViews() {
        #if !os(tvOS)
        contentView.addSubview(accessorySwitch)
        constrain(contentView, accessorySwitch) { contentView, accessorySwitch in
            accessorySwitch.right == contentView.right - 15
            accessorySwitch.centerY == contentView.centerY
        }
        #else
        contentView.addSubview(isOnLabel)
        constrain(contentView, isOnLabel) { contentView, isOnLabel in
            isOnLabel.right == contentView.right - 15
            isOnLabel.centerY == contentView.centerY
        }
        #endif
        setupTint()
    }
    
    #if os(tvOS)
    override open func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocus(in: context, with: coordinator)
        if isFocused {
            isOnLabel.textColor = .black
        } else {
            isOnLabel.textColor = CC.secondaryLabel
        }
    }
    #endif
    
    @objc open func setupTint() {
        #if !os(tvOS)
        accessorySwitch.onTintColor = ColorStore.tintColor.withAlphaComponent(0.8)
        #endif
    }
}
