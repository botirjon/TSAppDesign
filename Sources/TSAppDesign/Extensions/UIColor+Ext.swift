//
//  Extensions.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    static func asset(named name: String) -> UIColor {
        let bundle = Bundle(identifier: "com.uzsqb.joydabusiness.appdesign")
        return .init(named: name, in: bundle, compatibleWith: nil) ?? UIColor()
    }
    
    var light: UIColor {
        self.resolvedColor(with: .init(userInterfaceStyle: .light))
    }
    
    var dark: UIColor {
        self.resolvedColor(with: .init(userInterfaceStyle: .dark))
    }
    
    var current: UIColor {
        self.resolvedColor(with: .current)
    }
}

// Theme
public extension UIColor {
    
    static var appAccent: UIColor { .asset(named: "accent")}
    static var appAccentDark: UIColor { .asset(named: "accentDark")}
    static var appBackgroundPassive: UIColor { .asset(named: "backgroundPassive")}
    static var appBackgroundPrimary: UIColor { .asset(named: "backgroundPrimary")}
    static var appBackgroundSecondary: UIColor { .asset(named: "backgroundSecondary")}
    static var appBackgroundTertiary: UIColor { .asset(named: "backgroundTertiary")}
    static var appBrand: UIColor { .asset(named: "brand")}
    static var appGreen: UIColor { .asset(named: "green")}
    static var appRed: UIColor { .asset(named: "red")}
    static var appTextPrimary: UIColor { .asset(named: "textPrimary")}
    static var appTextSecondary: UIColor { .asset(named: "textSecondary")}
    static var appTextTertiary: UIColor { .asset(named: "textTertiary")}
    static var textQuarternary: UIColor { .asset(named: "textQuarternary")}
    static var appTextWhite: UIColor { .asset(named: "textWhite")}
    static var appTextMuted: UIColor { .asset(named: "textMuted")}
    static var appBorder: UIColor { .asset(named: "border")}
    static var appBackgroundQuarternary: UIColor { .asset(named: "backgroundQuarternary") }
}
