//
//  JOYDAFont.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit


public enum AppFont {
    case gilroy
    case roboto
    case montserrat
    
    
    /// Family name of `Self`
    var familyName: String {
        switch self {
        case .gilroy: return "Gilroy"
        case .roboto: return "Roboto"
        case .montserrat: return "Montserrat"
        }
    }
    
    
    /// File name of `Self`
    var fileName: String {
        switch self {
        case .gilroy: return "Gilroy"
        case .roboto: return "Roboto"
        case .montserrat: return "Montserrat"
        }
    }
}


public protocol AppFontStyle {
    var rawValue: String { get }
}
