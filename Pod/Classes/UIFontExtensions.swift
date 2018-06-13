//
//  UIFontExtensions.swift
//  Pods
//
//  Created by Grzegorz Tatarzyn on 03/10/2015.
//
//
import Foundation
import UIKit

extension UIFont {
    func sizeFor(_ content: String, constrain: CGSize) -> CGSize {
        return NSString(string: content).boundingRect(
            with: constrain,
            options: NSStringDrawingOptions.usesLineFragmentOrigin,
            attributes: [kCTFontAttributeName as NSAttributedString.Key: self],
            context: nil
        )
        .size
    }
}
