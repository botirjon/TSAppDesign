//
//  GlobalContant.swift
//  AppDesign
//
//  Created by Botirjon Nasridinov on 06/01/2020.
//  Copyright © 2020 SANOAT QURILISH BANK. All rights reserved.
//

import UIKit

public struct BoxMetrics {
    public static let paddingX12 = Scaler.scaledDimension(forDimension: 12, along: .x)
    public static let paddingY12 = Scaler.scaledDimension(forDimension: 12, along: .y)
    public static let marginX20 = Scaler.scaledDimension(forDimension: 20, along: .x)
    public static let marginY20 = Scaler.scaledDimension(forDimension: 20, along: .y)
    
    
    public static let cornerRadius30 = Scaler.scaledDimension(forDimension: 30, along: .y)
    public static let cornerRadius25 = Scaler.scaledDimension(forDimension: 25, along: .y)
    public static let cornerRadius20 = Scaler.scaledDimension(forDimension: 20, along: .y)
    public static let cornerRadius15 = Scaler.scaledDimension(forDimension: 15, along: .y)
    public static let cornerRadius16 = Scaler.scaledDimension(forDimension: 16, along: .y)
    public static let cornerRadius12 = Scaler.scaledDimension(forDimension: 12, along: .y)
    
    
    /// Generic border width for views.
    public static let borderWidth = Scaler.scaledDimension(forDimension: 0.5, along: .y)
    
    public enum SafeArea {
        public static let horizontal = Scaler.scaledDimension(forDimension: 20, along: .x)
        public static let vertical = Scaler.scaledDimension(forDimension: 20, along: .y)
        
        public static let horizontalInsets: UIEdgeInsets = .init(top: 0, left: horizontal, bottom: 0, right: horizontal)
        
        public static let verticalInsets: UIEdgeInsets = .init(top: vertical, left: 0, bottom: vertical, right: 0)
        
        public static let insets: UIEdgeInsets = .init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }
}
