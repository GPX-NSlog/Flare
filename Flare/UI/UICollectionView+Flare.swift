//
//  UICollectionView+Reuse.swift
//  FunRunning
//
//  Created by 羊小白丶 on 2019/7/21.
//  Copyright © 2019 羊小白丶. All rights reserved.
//

import UIKit

extension UICollectionViewCell: CellReuseProtocol {
    
}

extension UICollectionView {
    
    public final func register<T: UICollectionViewCell>(cellType: T.Type) {
        self.register(cellType.classForCoder(), forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }
    
    public final func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath, cellType: T.Type = T.self) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) matching type \(cellType.self). "
                    + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
                    + "and that you registered the cell beforehand"
            )
        }
        return cell
    }
}
