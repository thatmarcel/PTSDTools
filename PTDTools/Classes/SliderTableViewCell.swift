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
    public let slider: UISlider = {
        let slider = UISlider()
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.tintColor = ColorStore.tintColor
        slider.addHaptic(.selection, forControlEvents: .touchDown)
        return slider
    }()
    #else
    public let slider: TvOSSlider = {
        let slider = TvOSSlider()
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.stepValue = 10
        slider.minimumTrackTintColor = ColorStore.tintColor
        return slider
    }()
    #endif
    
    public let topLabel: UILabel = {
        let label = UILabel()
        label.font = .roundedLabel
        return label
    }()
    
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
