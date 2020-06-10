//
//  Variables.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 10/06/2020.
//

import Foundation

public func configure<T>( _ item: T, config: (inout T) -> ()) -> T {
    var item = item
    config(&item)
    return item
}
