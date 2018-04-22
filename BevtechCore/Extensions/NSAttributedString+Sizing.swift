//
//  NSAttributedString+Size.swift
//  BevtechCore
//
//  Created by James VanBeverhoudt on 4/22/18.
//  Copyright © 2018 James VanBeverhoudt. All rights reserved.
//
// https://stackoverflow.com/a/30450559

import Foundation

public extension NSAttributedString {
    public func height(withConstrainedWidth width: CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
        return ceil(boundingBox.height)
    }

    public func width(withConstrainedHeight height: CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
        return ceil(boundingBox.width)
    }
}
