//
//  UITableView+Reuse.swift
//  Flare_Example
//
//  Created by 九洲互通 on 2019/9/6.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

public protocol CellReuseProtocol {
    static var reuseIdentifier: String { get }
}

extension CellReuseProtocol {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: CellReuseProtocol {
    
}

extension UITableView {
   
    public final func register<T: UITableViewCell>(cellType: T.Type) {
        self.register(cellType.classForCoder(), forCellReuseIdentifier: cellType.reuseIdentifier)
    }
    
    public final func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath, cellType: T.Type = T.self) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) matching type \(cellType.self). "
                    + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
                    + "and that you registered the cell beforehand"
            )
        }
        return cell
    }
}
