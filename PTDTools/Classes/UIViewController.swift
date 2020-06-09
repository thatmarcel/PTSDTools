//
//  UIViewController.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 24/12/2019.
//  Copyright © 2019 Patrik Svoboda. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
    @objc func dismissModal() {
        dismiss(animated: true)
    }
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    var inNavigationController: UINavigationController {
        UINavigationController(rootViewController: self)
    }
}
public extension UITableViewController {
    @objc func reload() {
        tableView.reloadData()
    }
}
public extension UINavigationController {
    var rootViewController: UIViewController {
        viewControllers.first ?? UIViewController()
    }
}

