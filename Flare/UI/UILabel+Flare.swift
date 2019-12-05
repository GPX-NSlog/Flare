//
//  UILabel+Flare.swift
//  FunRunning
//
//  Created by 羊小白丶 on 2019/6/30.
//  Copyright © 2019 羊小白丶. All rights reserved.
//

import UIKit

public extension UILabel {
    convenience init(font: UIFont, textColor: UIColor) {
        self.init()
        self.font = font
        self.textColor = textColor
    }
    
    convenience init(fontSize: CGFloat, hexColor: String) {
        self.init()
        self.font = UIFont.systemFont(ofSize: fontSize)
        self.textColor = UIColor(hex: hexColor)
    }
}
