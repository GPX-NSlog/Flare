//
//  String+Extension.swift
//  Echange
//
//  Created by 九洲互通 on 2019/8/6.
//  Copyright © 2019 zhuda. All rights reserved.
//

import Foundation
import Hue

public extension String {
    var hexColor: UIColor {
        return UIColor(hex: self)
    }
}
