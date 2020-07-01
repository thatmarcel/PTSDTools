//
//  TableViewController.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 11/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import UIKit
#if canImport(PanModal)
import PanModal
#endif

open class TableViewController: UITableViewController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationView()
        setupNotifications()
    }

    open func setupTableView() {}
    open func setupNavigationView() {}
    open func setupNotifications() {}
    
    open var sectionIds: [String] { [] }
    open var sections: [[String]] { sectionIds.map { cellsForSection($0) } }
    
    open func cellsForSection(_ section: String) -> [String] { [] }
    
    override open func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }

    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sections[section].count
    }
    
    override open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    open func registerCells(_ cells: CellRegistration) {
        cells.forEach { identifier, cellClass in
            tableView.register(cellClass, forCellReuseIdentifier: identifier)
        }
    }
    
    typealias CellRegistration = [String: AnyClass?]
}
