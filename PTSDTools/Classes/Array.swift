//
//  Array.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 04/02/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import Foundation

public extension Array where Element == Array<String> {
    subscript(_ indexPath: IndexPath) -> String { self[indexPath.section][indexPath.row] }
}

public extension Array {
    subscript(_ indexPath: IndexPath) -> Element { self[indexPath.row] }
}
