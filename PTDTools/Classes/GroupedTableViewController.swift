//
//  GroupedTableViewController.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 11/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import UIKit

open class GroupedTableViewController: TableViewController {
    public init() {
        #if !os(tvOS)
        if #available(iOS 13.0, *) {
            super.init(style: .insetGrouped)
        } else {
            super.init(style: .grouped)
        }
        #else
        super.init(style: .grouped)
        #endif
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
