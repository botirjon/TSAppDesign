//
//  Pallete.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

/// A protocol that defines the color scheme of a theme.
public protocol AnyPallete {
    
    var accent: UIColor { get }
    var accentDark: UIColor { get }
    var backgroundPassive: UIColor { get }
    var backgroundPrimary: UIColor { get }
    var backgroundSecondary: UIColor { get }
    var backgroundTertiary: UIColor { get }
    var brand: UIColor { get }
    var green: UIColor { get }
    var red: UIColor { get }
    var textPrimary: UIColor { get }
    var textPrimaryLightBackground: UIColor { get }
    var textSecondary: UIColor { get }
    var textTertiary: UIColor { get }
    var textQuarternary: UIColor { get }
    var textWhite: UIColor { get }
    var textMuted: UIColor { get }
    var border: UIColor { get }
}

public extension AnyPallete {
    var accent: UIColor { .appAccent }
    var accentDark: UIColor { .appAccentDark }
    var backgroundPassive: UIColor { .appBackgroundPassive }
    var backgroundPrimary: UIColor { .appBackgroundPrimary }
    var backgroundSecondary: UIColor { .appBackgroundSecondary }
    var backgroundTertiary: UIColor { .appBackgroundTertiary }
    var backgroundQuarternary: UIColor { .appBackgroundQuarternary }
    var brand: UIColor { .appBrand }
    var green: UIColor { .appGreen }
    var red: UIColor { .appRed }
    var textPrimary: UIColor { .appTextPrimary }
    var textPrimaryLightBackground: UIColor { .appTextPrimaryLightBackground }
    var textSecondary: UIColor { .appTextSecondary }
    var textTertiary: UIColor { .appTextTertiary }
    var textQuarternary: UIColor { .appTextMuted }
    var textWhite: UIColor { .appTextWhite }
    var textMuted: UIColor { .appTextMuted }
    var border: UIColor { .appBorder }
}
