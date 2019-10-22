//
//  UIView+Extension.swift
//  Alamofire
//
//  Created by 九洲互通 on 2019/10/22.
//

import Foundation

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.masksToBounds = true
            layer.cornerRadius = abs(CGFloat(Int(newValue * 100)) / 100)
        }
    }
}
