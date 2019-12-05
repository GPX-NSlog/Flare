//
//  String+Flare.swift
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
    
    /// 给指定字符串添加富文本
    func addAttributes(_ attrs: [NSAttributedString.Key: Any] = [:], string: String) -> NSAttributedString {
        
        let attrString = NSMutableAttributedString(string: self)
        guard let range = self.range(of: string) else {
            return NSAttributedString(string: self)
        }
        attrString.addAttributes(attrs, range: self.nsRange(from: range))
        
        return attrString
    }
}
