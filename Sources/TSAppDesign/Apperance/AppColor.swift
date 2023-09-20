//
//  AppColor.swift
//  AppDesign
//
//  Created by Botirjon Nasridinov on 21/01/23.
//

import Foundation
import UIKit

protocol AnyAppColor {
    var value: UIColor { get }
}

public enum AppColor: AnyAppColor {
    case accent
    case accentDark
    case backgroundPassive
    case backgroundPrimary
    case backgroundSecondary
    case backgroundTertiary
    case backgroundQuarternary
    case brand
    case green
    case red
    case textPrimary
    case textPrimaryLightBackground
    case textSecondary
    case textTertiary
    case textQuarternary
    case textWhite
    case textMuted
    case border
    case clear
    case custom(UIColor)
    
    var value: UIColor {
        switch self {
        case .accent:
            return pallete.accent
        case .accentDark:
            return pallete.accentDark
        case .backgroundPassive:
            return pallete.backgroundPassive
        case .backgroundPrimary:
            return pallete.backgroundPrimary
        case .backgroundSecondary:
            return pallete.backgroundSecondary
        case .backgroundTertiary:
            return pallete.backgroundTertiary
        case .backgroundQuarternary:
            return pallete.backgroundQuarternary
        case .brand:
            return pallete.brand
        case .green:
            return pallete.green
        case .red:
            return pallete.red
        case .textPrimary:
            return pallete.textPrimary
        case .textPrimaryLightBackground:
            return pallete.textPrimaryLightBackground
        case .textSecondary:
            return pallete.textSecondary
        case .textTertiary:
            return pallete.textTertiary
        case .textWhite:
            return pallete.textWhite
        case .textQuarternary:
            return pallete.textQuarternary
        case .textMuted:
            return pallete.textMuted
        case .border:
            return pallete.border
        case .clear:
            return .clear
        case .custom(let color):
            return color
        }
    }
    
}

