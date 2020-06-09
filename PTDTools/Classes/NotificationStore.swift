//
//  NotificationStore.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 07/12/2019.
//  Copyright © 2019 Patrik Svoboda. All rights reserved.
//

import Foundation

open class NotificationStore {
    public static var shared = NotificationStore()
    public enum Notifications: String {
        case homeNameChanged = "HomeNameChanged"
        case tintColorChanged = "TintColorChanged"
        case tabBarSettingsChanged = "TabBarSettingsChanged"
        
        public var notification: Notification { return Notification(name: name) }
        public var name: Notification.Name { return Notification.Name(self.rawValue) }
    }

    public static func tintColorChanged() {
        NotificationCenter.default.post(NotificationStore.Notifications.tintColorChanged.notification)
    }
    
}

