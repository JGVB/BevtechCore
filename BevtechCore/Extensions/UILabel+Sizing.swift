//
//  UILabel+Sizing.swift
//  BevtechCore
//
//  Created by James VanBeverhoudt on 4/22/18.
//  Copyright © 2018 James VanBeverhoudt. All rights reserved.
//

import Foundation

public extension UILabel {
    public func height(withConstrainedWidth width: CGFloat) -> CGFloat {
        return attributedText?.height(withConstrainedWidth: width) ?? 0
    }

    public func width(withConstrainedHeight height: CGFloat) -> CGFloat {
        return attributedText?.height(withConstrainedWidth: height) ?? 0
    }
}
