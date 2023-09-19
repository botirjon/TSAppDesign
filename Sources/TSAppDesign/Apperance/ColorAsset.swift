//
//  AppColor.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public protocol AnyColorAsset {
    var color: UIColor { get }
}

public enum ColorAsset: String, AnyColorAsset {
    
    case accent = "accent"
    case accentDark = "accentDark"
    case backgroundPassive = "backgroundPassive"
    case backgroundPrimary = "backgroundPrimary"
    case backgroundSecondary = "backgroundSecondary"
    case backgroundTertiary = "backgroundTertiary"
    case backgroundQuarternary = "backgroundQuarternary"
    case brand = "brand"
    case green = "green"
    case red = "red"
    case textPrimary = "textPrimary"
    case textPrimaryBrandBackground = "textPrimaryBrandBackground"
    case textSecondary = "textSecondary"
    case textTertiary = "textTertiary"
    case textQuarternary = "textQuarternary"
    case textWhite = "textWhite"
    case textMuted = "textMuted"
    case border = "border"
}

extension ColorAsset {
    public var color: UIColor {
        .asset(named: rawValue)
    }
}


