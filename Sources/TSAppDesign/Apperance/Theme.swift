//
//  Theme.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

protocol AnyTheme {
    var pallete: AnyPallete { get }
}

public enum Theme: Int, AnyTheme, CaseIterable {
    
    case light = 0
    case dark
    case system

    var pallete: AnyPallete {
        AppPallete()
    }
    
    public var userInterfaceStyle: UIUserInterfaceStyle {
        switch self {
        case .light:
            return .light
        case .dark:
            return .dark
        case .system:
            return .unspecified
        }
    }
}
