//
//  Themer+UIButton.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 25/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension Themer where Base: UIButton {
    
    func setTitleColor(_ color: AppColor, for state: UIControl.State) {
        base.setTitleColor(color.value, for: state)
    }
    
    // NEW
    func setAppFont(_ font: AppFont, ofSize size: CGFloat, style: AppFontStyle) {
        self.base.titleLabel?.font = .appFont(font, ofSize: size, style: style)
    }
    
    func setAppFont(_ font: AppFont, ofSize size: FontSize, style: AppFontStyle) {
        self.setAppFont(font, ofSize: size.pointSize, style: style)
    }
    
    func setGilroyFont(ofSize size: CGFloat, style: GilroyFontStyle = .regular) {
        self.base.titleLabel?.font = .gilroyFont(ofSize: size, style: style)
    }
    
    func setGilroyFont(ofSize size: FontSize, style: GilroyFontStyle = .regular) {
        self.setGilroyFont(ofSize: size.pointSize, style: style)
    }
    
    func setRobotoFont(ofSize size: CGFloat, style: RobotoFontStyle = .regular) {
        self.base.titleLabel?.font = .robotoFont(ofSize: size, style: style)
    }
    
    func setRobotoFont(ofSize size: FontSize, style: RobotoFontStyle = .regular) {
        self.setRobotoFont(ofSize: size.pointSize, style: style)
    }
    
    func setMontserratFont(ofSize size: CGFloat, style: MontserratFontStyle = .regular) {
        self.base.titleLabel?.font = .montserratFont(ofSize: size, style: style)
    }
    
    func setMontserratFont(ofSize size: FontSize, style: MontserratFontStyle = .regular) {
        self.setMontserratFont(ofSize: size.pointSize, style: style)
    }
    
    func setPoppinsFont(ofSize size: CGFloat, style: PoppinsFontStyle = .regular) {
        self.base.font = .poppinsFont(ofSize: size, style: style)
    }
    
    func setPoppinsFont(ofSize size: FontSize, style: PoppinsFontStyle = .regular) {
        self.setPoppinsFont(ofSize: size.pointSize, style: style)
    }
}
