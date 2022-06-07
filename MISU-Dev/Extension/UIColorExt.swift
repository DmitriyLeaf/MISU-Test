//
//  UIColorExt.swift
//  WishHook
//
//  Created by KNimtur on 10/2/19.
//  Copyright © 2019 WHAR. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    struct appDefault {
        static var red: UIColor { return UIColor(hexString: "#FF2D55") }
        static var redNew: UIColor { return UIColor(hexString: "#DD284A") }
        static var redNika: UIColor { return UIColor(hexString: "#F53D7A") }
        
        static var blue: UIColor { return UIColor(hexString: "#4390DE") }
        static var bluePrimary: UIColor { return UIColor(hexString: "#2C98F0") }
        static var blueLight: UIColor {return UIColor(hexString: "#5E9BFF")}
        static var blueUltraLight: UIColor {return UIColor(hexString: "#AFC6DE")}
        static var blueNika: UIColor {return UIColor(hexString: "#0189FF")}
        
        static var green: UIColor { return UIColor(hexString: "#54BDB0") }
        static var yellow: UIColor {return UIColor(hexString: "#FFD60A")}
        
        static var black: UIColor { return UIColor(hexString: "#1D1D1D") }
        static var blackPrimary: UIColor { return UIColor(hexString: "#494949") }
        static var blackKoliya: UIColor { return UIColor(hexString: "#171926") }
        static var blackVikt: UIColor { return UIColor(hexString: "#333333") }
        static var darkText: UIColor { return UIColor(hexString: "#3D3D3D") }
        static var lightGrey: UIColor { return UIColor(hexString: "#F8F8F8") }
        static var white: UIColor { return UIColor(hexString: "#FFFFFF") }
        
        static var titanWhite: UIColor { return UIColor(hexString: "#EFEFFF") }
        static var aliceBlue: UIColor { return UIColor(hexString: "#EFF7FF") }
        static var paleLavender: UIColor { return UIColor(hexString: "#FFFFD7") }
        static var mediumSlateBlue: UIColor { return UIColor(hexString: "#6E6EF4") }
        static var brilliantAzure: UIColor { return UIColor(hexString: "#3F8FFF") }
        static var babyBlueEyes: UIColor { return UIColor(hexString: "#A5CAFE") }
        static var pattensBlue: UIColor { return UIColor(hexString: "#DEECFF") }
        static var zircon: UIColor { return UIColor(hexString: "#F6FAFF") }
        
        static var melrose: UIColor { return UIColor(hexString: "#A3A3FF") }
        static var cornflowerBlue: UIColor { return UIColor(hexString: "#6E6EF4") }
        static var royalBlue: UIColor { return UIColor(hexString: "#5E5EEB") }
        static var fog: UIColor { return UIColor(hexString: "#D7D7FF") }
        
        static var malibu: UIColor { return UIColor(hexString: "#60A6FF") }
        static var cornflowerBlueBlue: UIColor { return UIColor(hexString: "#4F7DF3") }
        
        static var cards_dark: UIColor { return UIColor(hexString: "#F1F5FF") }
        static var stroke: UIColor { return UIColor(hexString: "#E4EFFF") }
        static var second_blue: UIColor { return UIColor(hexString: "#5D9BF8") }
        static var grey_text: UIColor { return UIColor(hexString: "#69779A") }
        static var background_light: UIColor { return UIColor(hexString: "#FBFCFF") }
        static var graph_1_stroke: UIColor { return UIColor(hexString: "#FFD4D4") }
        static var graph_1_main_red: UIColor { return UIColor(hexString: "#FF7A7A") }
        static var graph_3_main_red: UIColor { return UIColor(hexString: "#FF7D85") }
        static var graph_4_main_blue: UIColor { return UIColor(hexString: "#5985F5") }
        static var graph_5_main_orange: UIColor { return UIColor(hexString: "#FFAA8D") }
        
        static var graph_1_gradient_stroke: UIColor { return UIColor(hexString: "#FFA8A3") }
        static var main_red: UIColor { return UIColor(hexString: "#FF5E5E") }
        static var shadow_gray: UIColor { return UIColor(hexString: "#E7E7F9") }
        
        static var graph_2_stroke: UIColor { return UIColor(hexString: "#8CC8FF") }
        static var graph_3_stroke: UIColor { return UIColor(hexString: "#FFAFB4") }
        static var graph_4_stroke: UIColor { return UIColor(hexString: "#8FADF9") }
        static var graph_5_gradient_stroke: UIColor { return UIColor(hexString: "#FFC5B1") }
    }
    
    struct appGradient {
        static var violet: UIColor { return getByUIStyle(light: "#AC34AF", dark: "#AC34AF") }
        static var purple: UIColor { return getByUIStyle(light: "#8B46E3", dark: "#8B46E3") }
        
        static var red_gradient: [CGColor] { return [
            UIColor(hexString: "#FF8D8B").cgColor,
            UIColor(hexString: "#FF5E5E").cgColor
        ] }
        static var blue_gradient: [CGColor] { return [
            UIColor(hexString: "#60A6FF").cgColor,
            UIColor(hexString: "#4F7DF3").cgColor
        ] }
        static var сard_violet_gradient: [CGColor] { return [
            UIColor(hexString: "#8792F2").cgColor,
            UIColor(hexString: "#6370ED").cgColor
        ] }
        static var сard_blue_light_gradient: [CGColor] { return [
            UIColor(hexString: "#83C3FF").cgColor,
            UIColor(hexString: "#4FABFF").cgColor
        ] }
        
        static var graph_red_transparent: [CGColor] { return [
            UIColor(hexString: "#FF9090").cgColor,
            UIColor(hexString: "#FFFFFF").withAlphaComponent(0).cgColor
        ] }
        
        static var graph_blue2_transparent: [CGColor] { return [
            UIColor(hexString: "#86B8FF").cgColor,
            UIColor(hexString: "#FFFFFF").withAlphaComponent(0).cgColor
        ] }
        
        static var graph_red3_transparent: [CGColor] { return [
            UIColor(hexString: "#FF9AA0").cgColor,
            UIColor(hexString: "#FFFFFF").withAlphaComponent(0).cgColor
        ] }
        
        static var graph_blue4_transparent: [CGColor] { return [
            UIColor(hexString: "#A5BEFF").cgColor,
            UIColor(hexString: "#FFFFFF").withAlphaComponent(0).cgColor
        ] }
        
        static var graph_orange5_transparent: [CGColor] { return [
            UIColor(hexString: "#FFC4B0").cgColor,
            UIColor(hexString: "#FFFFFF").withAlphaComponent(0).cgColor
        ] }
        
        static var blueEyes_brillAzure: [CGColor] { return [
            appDefault.babyBlueEyes.cgColor,
            appDefault.brilliantAzure.cgColor
        ] }
        
        static var melrose_cornflower: [CGColor] { return [
            appDefault.melrose.cgColor,
            appDefault.cornflowerBlue.cgColor
        ] }
        
        static var malibu_cornflowerBlue: [CGColor] { return [
            appDefault.malibu.cgColor,
            appDefault.cornflowerBlueBlue.cgColor
        ] }
    }
    
    fileprivate static func getByUIStyle(light: String, dark: String, alphaLight: CGFloat = 1, alphaDark: CGFloat = 1) -> UIColor {
        return UIColor {(traintCollection: UITraitCollection) -> UIColor in
            if traintCollection.userInterfaceStyle == .dark {
                return UIColor(hexString: dark).withAlphaComponent(alphaDark)
            }
            return UIColor(hexString: light).withAlphaComponent(alphaLight)
        }
    }
    
    convenience init(hexString hex: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()

        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }

        assert(hexFormatted.count == 6, "Invalid hex code used.")

        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)

        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
    
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
}
