//
//  UserDefaults.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 18/12/2019.
//  Copyright © 2019 Patrik Svoboda. All rights reserved.
//

import Foundation
import UIKit

@propertyWrapper
public struct UserDefault<T> {
    public let key: String
    public let defaultValue: T
    
    public init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    public var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
