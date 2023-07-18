//
//  Extensions+UIFont.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension UIFont {
    
    static func appFont(_ font: AppFont, ofSize size: CGFloat, style: AppFontStyle) -> UIFont {
        let name = String.init(format: "%@-%@", font.familyName, style.rawValue)
        return UIFont.init(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func gilroyFont(ofSize size: CGFloat, style: GilroyFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size)
        return appFont(.gilroy, ofSize: scaledSize, style: style)
    }
    
    static func robotoFont(ofSize size: CGFloat, style: RobotoFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size)
        return appFont(.roboto, ofSize: scaledSize, style: style)
    }
    
    static func montserratFont(ofSize size: CGFloat, style: MontserratFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size)
        return appFont(.montserrat, ofSize: scaledSize, style: style)
    }
    
    static func poppinsFont(ofSize size: CGFloat, style: PoppinsFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size)
        return appFont(.poppins, ofSize: scaledSize, style: style)
    }
}
