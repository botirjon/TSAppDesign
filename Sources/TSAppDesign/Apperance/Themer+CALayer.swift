//
//  Themer+CALayer.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension Themer where Base: CALayer {
    
    func setBorderColor(_ color: AppColor) {
        self.base.borderColor = color.value.cgColor
    }
    
    func setBackgroundColor(_ color: AppColor) {
        self.base.backgroundColor = color.value.cgColor
    }
    
//    func setBorderColor(to color: AppColor) {
//        self.base.borderColor = color.value.cgColor
//    }
//
//    func setBackgroundColor(to color: AppColor) {
//        self.base.backgroundColor = color.value.cgColor
//    }
}
