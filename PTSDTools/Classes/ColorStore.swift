//
//  ColorStore.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 30/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

open class ColorStore: ObservableObject {
    public static var shared = ColorStore()
    
    public init() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleTintColorChange), name: NotificationStore.Notifications.tintColorChanged.name, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    public static var tintColor: UIColor { uiColor(ColorStore.shared._tintColorId) ?? .systemOrange }
    
    public static var supportedTints: [Color] { Color.allCases }
    
    public static func uiColor(_ color: Color) -> UIColor {
        switch color {
        case .systemOrange: return .systemOrange
        case .systemRed: return .systemRed
        case .systemBlue: return .systemBlue
        case .systemPink: return .systemPink
        case .label: return .label
        }
    }

    /// Returns a name for the color to show in the tint picker
    public static func nameForColor(_ color: Color) -> String {
        switch color {
        case .systemOrange: return "Orange"
        case .systemRed: return "Red"
        case .systemBlue: return "Blue"
        case .systemPink: return "Pink"
        case .label: return "Text color"
        }
    }
    
    // MARK: Shadow properties
    @AppStorage("TintColorId")
    open var _tintColorId: String = Color.systemOrange.id {
        didSet {
            NotificationStore.tintColorChanged()
        }
    }
    
    public enum Color: String, CaseIterable {
        case systemOrange = "systemOrange"
        case systemRed = "systemRed"
        case systemBlue = "systemBlue"
        case systemPink = "systemPink"
        case label = "label"
        
        public var id: String { rawValue }
        public var uiColor: UIColor { ColorStore.uiColor(self) }
        public var name: String { ColorStore.nameForColor(self) }
    }
    
    @objc open func handleTintColorChange() {
        guard let tabBarVC = UIApplication.shared.keyWindow?.rootViewController as? Tintable else { return }
        tabBarVC.setupTint()
    }
    
    // MARK: String fallbacks
    public static func nameForColor(_ id: String) -> String? {
        guard let color = color(id) else { return nil }
        return nameForColor(color)
    }
    /// Returns a Color object for a string id
    public static func color(_ id: String) -> Color? {
        Color(rawValue: id)
    }
    public static func uiColor(_ id: String) -> UIColor? {
        guard let color = color(id) else { return nil }
        return uiColor(color)
    }
    
    public static var supportedTintIds: [String] { Color.allCases.map(\.id) }
    
}
