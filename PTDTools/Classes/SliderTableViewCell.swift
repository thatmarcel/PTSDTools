//
//  SliderTableViewCell.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 31/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import UIKit
#if os(tvOS)
import TvOSSlider
#endif
import Cartography
#if canImport(Haptica)
import Haptica
#endif

open class SliderTableViewCell: TableViewCell {

    #if !os(tvOS)
    open let slider = configure(UISlider()) {
        $0.maximumValue = 100
        $0.minimumValue = 0
        $0.tintColor = ColorStore.tintColor
        $0.addHaptic(.selection, forControlEvents: .touchDown)
    }
    #else
    public let slider = configure(TvOSSlider()) {
        $0.maximumValue = 100
        $0.minimumValue = 0
        $0.stepValue = 10
        $0.minimumTrackTintColor = ColorStore.tintColor
    }
    #endif
    
    public let topLabel = configure(UILabel()) {
        $0.font = .roundedLabel
    }
    
    override open func setupViews() {
        contentView.addSubviews(topLabel, slider)
        constrain(contentView, topLabel, slider) { contentView, topLabel, slider in
            topLabel.top == contentView.layoutMarginsGuide.top
            topLabel.left == contentView.layoutMarginsGuide.left
            topLabel.right == contentView.layoutMarginsGuide.right
            
            slider.top == topLabel.bottom + 10
            slider.left == contentView.layoutMarginsGuide.left
            slider.right == contentView.layoutMarginsGuide.right
            slider.bottom == contentView.layoutMarginsGuide.bottom
        }
    }
    
    #if os(tvOS)
    override open var canBecomeFocused: Bool { false }
    #endif

}
