//
//  TableViewCell.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 04/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import UIKit

open class TableViewCell: UITableViewCell, ReloadableCell {
    
    open func setupViews() {}
    open func setupNotifications() {}
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    open func reloadData() {}

}
