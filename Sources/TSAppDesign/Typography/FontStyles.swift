//
//  FontStyles.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation

public enum GilroyFontStyle: String, AppFontStyle, CaseIterable {
    case black = "Black"
    case blackItalic = "BlackItalic"
    case bold = "Bold"
    case boldItalic = "BoldItalic"
    case extraBold = "ExtraBold"
    case extraBoldItalic = "ExtraBoldItalic"
    case heavy = "Heavy"
    case heavyItalic = "HeavyItalic"
    case light = "Light"
    case lightItalic = "LightItalic"
    case medium = "Medium"
    case mediumItalic = "MediumItalic"
    case regular = "Regular"
    case regularItalic = "RegularItalic"
    case semiBold = "SemiBold"
    case semiBoldItalic = "SemiBoldItalic"
    case thin = "Thin"
    case thinItalic = "ThinItalic"
    case ultraLight = "UltraLight"
    case ultraLightItalic = "UltraLightItalic"

}


public enum RobotoFontStyle: String, AppFontStyle, CaseIterable {
    case thinItalic = "ThinItalic"
    case black = "Black"
    case blackItalic = "BlackItalic"
    case bold = "Bold"
    case boldItalic = "BoldItalic"
    case italic = "Italic"
    case light = "Light"
    case lightItalic = "LightItalic"
    case medium = "Medium"
    case mediumItalic = "MediumItalic"
    case regular = "Regular"
    case thin = "Thin"
}


public enum MontserratFontStyle: String, AppFontStyle, CaseIterable {
    case black = "Black"
    case blackItalic = "BlackItalic"
    case bold = "Bold"
    case boldItalic = "BoldItalic"
    case extraBold = "ExtraBold"
    case extraBoldItalic = "ExtraBoldItalic"
    case extraLight = "ExtraLight"
    case extraLightItalic = "ExtraLightItalic"
    case italic = "Italic"
    case light = "Light"
    case lightItalic = "LightItalic"
    case medium = "Medium"
    case mediumItalic = "MediumItalic"
    case regular = "Regular"
    case semiBold = "SemiBold"
    case semiBoldItalic = "SemiBoldItalic"
    case thin = "Thin"
    case thinItalic = "ThinItalic"
}

public enum PoppinsFontStyle: String, AppFontStyle, CaseIterable {
    case blackItalic = "BlackItalic"
    case black = "Black"
    case extraBoldItalic = "ExtraBoldItalic"
    case extraBold = "ExtraBold"
    case boldItalic = "BoldItalic"
    case bold = "Bold"
    case semiBoldItalic = "SemiBoldItalic"
    case semiBold = "SemiBold"
    case mediumItalic = "MediumItalic"
    case medium = "Medium"
    case italic = "Italic"
    case regular = "Regular"
    case lightItalic = "LightItalic"
    case light = "Light"
    case extraLightItalic = "ExtraLightItalic"
    case extraLight = "ExtraLight"
    case thinItalic = "ThinItalic"
    case thin = "Thin"
}


public enum FontSize {
    case largeTitle
    case title1
    case title2
    case title3
    case headline
    case body
    case callout
    case subheadline
    case footnote
    case caption
    case caption2
    case custom(_ pointSize: CGFloat)
    
    public var pointSize: CGFloat {
        switch self {
        case .largeTitle:
            return 34
        case .title1:
            return 28
        case .title2:
            return 22
        case .title3:
            return 20
        case .headline:
            return 17
        case .body:
            return 17
        case .callout:
            return 16
        case .subheadline:
            return 15
        case .footnote:
            return 13
        case .caption:
            return 12
        case .caption2:
            return 11
        case .custom(let pointSize):
            return pointSize
        }
    }
}



