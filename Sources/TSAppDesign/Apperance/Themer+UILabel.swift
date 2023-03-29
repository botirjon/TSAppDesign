//
//  Themer+UILabel.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension Themer where Base: UILabel {
    
    func setTextColor(_ color: AppColor) {
        self.base.textColor = color.value
    }
    
    func setTextColor(to color: AppColor) {
        self.base.textColor = color.value
    }
    
    // NEW
    func setAppFont(_ font: AppFont, ofSize size: CGFloat, style: AppFontStyle) {
        self.base.font = .appFont(font, ofSize: size, style: style)
    }
    
    func setAppFont(_ font: AppFont, ofSize size: FontSize, style: AppFontStyle) {
        self.setAppFont(font, ofSize: size.pointSize, style: style)
    }
    
    func setGilroyFont(ofSize size: CGFloat, style: GilroyFontStyle = .regular) {
        self.base.font = .gilroyFont(ofSize: size, style: style)
    }
    
    func setGilroyFont(ofSize size: FontSize, style: GilroyFontStyle = .regular) {
        self.setGilroyFont(ofSize: size.pointSize, style: style)
    }
    
    func setRobotoFont(ofSize size: CGFloat, style: RobotoFontStyle = .regular) {
        self.base.font = .robotoFont(ofSize: size, style: style)
    }
    
    func setRobotoFont(ofSize size: FontSize, style: RobotoFontStyle = .regular) {
        self.setRobotoFont(ofSize: size.pointSize, style: style)
    }
    
    func setMontserratFont(ofSize size: CGFloat, style: MontserratFontStyle = .regular) {
        self.base.font = .montserratFont(ofSize: size, style: style)
    }
    
    func setMontserratFont(ofSize size: FontSize, style: MontserratFontStyle = .regular) {
        self.setMontserratFont(ofSize: size.pointSize, style: style)
    }
}
