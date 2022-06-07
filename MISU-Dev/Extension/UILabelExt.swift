//
//  UILabelExt.swift
//  CoronaVirTracker
//
//  Created by WH ak on 22.05.2020.
//  Copyright © 2020 CVTCompany. All rights reserved.
//

import UIKit

extension UILabel {
    static func createTitle(text: String = "label",
                            fontSize: CGFloat = 14,
                            weight: UIFont.Weight = .regular,
                            color: UIColor = .black,
                            alignment: NSTextAlignment = .left,
                            monospacedDigit: Bool = false,
                            numberOfLines: Int = 1
    ) -> UILabel {
        let tl = UILabel()
        tl.translatesAutoresizingMaskIntoConstraints = false
        tl.textAlignment = alignment
        if monospacedDigit {
            tl.font = UIFont.monospacedDigitSystemFont(ofSize: fontSize, weight: weight)
        } else {
            tl.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        }
        tl.textColor = color
        tl.text = text
        tl.numberOfLines = numberOfLines
        tl.sizeToFit()
        return tl
    }
    
    static func createCustom(
        text: String = "label",
        customFont: CustomFonts = .init(),
        color: UIColor = .black,
        alignment: NSTextAlignment = .left,
        numberOfLines: Int = 1
    ) -> UILabel {
        let tl = UILabel()
        tl.translatesAutoresizingMaskIntoConstraints = false
        tl.textAlignment = alignment
        tl.font = customFont.font// ?? UIFont.systemFont(ofSize: customFont.size, weight: customFont.systemWeight)
        tl.textColor = color
        tl.text = text
        tl.numberOfLines = numberOfLines
        tl.sizeToFit()
        return tl
    }
}
