//
//  CollectionViewController.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 06/03/2020.
//

import UIKit

open class CollectionViewController: UICollectionViewController {
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    open func setupNavigationBar() {}
    open func setupCollectionView() {}
    open func setupNotifications() {}
    

}
