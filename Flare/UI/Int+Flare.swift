//
//  Int+Flare.swift
//  Echange
//
//  Created by 九洲互通 on 2019/8/6.
//  Copyright © 2019 zhuda. All rights reserved.
//

import UIKit

public extension Int {
    
    var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    var font: UIFont {
        return UIFont.systemFont(ofSize: CGFloat(self))
    }
    
    var mediumFont: UIFont {
        return UIFont.systemFont(ofSize: CGFloat(self), weight: .medium)
    }
    
    var boldFont: UIFont {
        return UIFont.systemFont(ofSize: CGFloat(self), weight: .bold)
    }
}
