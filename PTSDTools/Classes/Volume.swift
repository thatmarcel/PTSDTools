//
//  Volume.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 13/02/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import Foundation
import UIKit
import MediaPlayer
#if !os(tvOS)
public extension MPVolumeView {
    static func setVolume(_ volume: Float) {
        let volumeView = MPVolumeView()
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01) {
            slider?.value = volume
        }
    }
}

#endif
