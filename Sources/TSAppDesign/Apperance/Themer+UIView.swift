//
//  Themer+UIView.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension Themer where Base: UIView {
    
    func setBackgroundColor(_ color: AppColor) {
        self.base.backgroundColor = color.value
    }
    
    func setBorderColor(_ color: AppColor) {
        self.base.layer.borderColor = color.value.cgColor
    }
    
    func setTintColor(_ color: AppColor) {
        self.base.tintColor = color.value
    }
    
    func setBorder(color: AppColor = .border, width: CGFloat = BoxMetrics.borderWidth) {
        self.base.layer.borderColor = color.value.cgColor
        self.base.layer.borderWidth = width
    }
}
