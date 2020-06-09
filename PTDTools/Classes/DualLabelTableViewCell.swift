//
//  DualLabelTableViewCell.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 11/01/2020.
//  Copyright © 2020 Patrik Svoboda. All rights reserved.
//

import UIKit
import Cartography

open class DualLabelTableViewCell: TableViewCell {

    public let leftLabel: UILabel = {
        let label = UILabel()
        label.font = .roundedLabel
        return label
    }()
    public let rightLabel: UILabel = {
        let label = UILabel()
        label.font = .roundedLabel
        return label
    }()
    
    private let stack = UIStackView()
    
    override open func setupViews() {
        stack.addArrangedSubview(leftLabel)
        stack.addArrangedSubview(rightLabel)
        contentView.addSubview(stack)
        
        constrain(contentView, stack) { contentView, stack in
            stack.edges == inset(contentView.edges, 12, 15, 12, 15)
        }
    }

}
