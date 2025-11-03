//
//  ThemeManager.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit
import BNAppFoundation


public var theme: Theme {
    return ThemeManager.shared.theme
}

public var pallete: AnyPallete {
    return theme.pallete
}

public final class ThemeManager {
    public static let shared = ThemeManager.init()
    private init() {}
    
    enum Keys: String, StorageKey {
        var value: String {
            return rawValue
        }
        
        case theme = "TS.AppDesign.Theme"
    }
    
    public lazy var themeObservable: Watchable<Theme> = .init(value: self.theme)
    
    public private(set) var theme: Theme {
        get {
            guard let themeValue = Storage.shared.value(forKey: Keys.theme) as? Int,
                let theme = Theme.init(rawValue: themeValue) else {
                    return .system
            }
            return theme
        }
        set {
            Storage.shared.set(newValue.rawValue, forKey: Keys.theme)
            themeObservable.accept(value: newValue)
        }
    }
    
    public func setTheme(_ theme: Theme) {
        guard theme != self.theme  else {
            return
        }
        self.theme = theme
        setNeedsThemeUpdate()
    }
    
    public func setNeedsThemeUpdate() {
        reloadWindow()
        setNeedsUICollectionViewThemeUpdate()
        setNeedsUITabBarThemeUpdate()
        setNeedsUITableViewThemeUpdate()
        setNeedsUIButtonThemeUpdate()
        setNeedsUISwitchThemeUpdate()
        setNeedsUILabelThemeUpdate()
        setNeedsUITableViewCellThemeUpdate()
        setNeedsUITextViewThemeUpdate()
    }
}

extension ThemeManager {
    
    //
    private func reloadWindow() {
        let sharedApplication = UIApplication.shared
        let window = sharedApplication.delegate?.window
        window??.subviews.forEach({ (view: UIView) in
            view.removeFromSuperview()
            window??.addSubview(view)
        })
        window??.rootViewController?.setNeedsStatusBarAppearanceUpdate()
    }
    
    private func setNeedsUITextViewThemeUpdate() {
        UITextView.appearance().font = .gilroyFont(ofSize: 14, style: .medium)
        UITextView.appearance().textColor = .appTextPrimary
        UITextView.appearance().textContainerInset = .init(y: .vertical(scaling: 10), x: .horizontal(scaling: 15))
        UITextView.appearance().layer.cornerRadius = BoxMetrics.cornerRadius12
        UITextView.appearance().backgroundColor = .appBackgroundSecondary
    }
    
    private func setNeedsUICollectionViewThemeUpdate() {
        UICollectionView.appearance().contentInsetAdjustmentBehavior = .never
        UICollectionView.appearance().backgroundColor = .clear
    }
    
    //
    private func setNeedsUITabBarThemeUpdate() {
        UITabBar.appearance().tintColor = pallete.textPrimary
        UITabBar.appearance().unselectedItemTintColor = pallete.textPrimary
    }
    
    //
    private func setNeedsUITableViewThemeUpdate() {
        
        let tableFooterView = UIView.init()
        tableFooterView.backgroundColor = .clear
        UITableView.appearance().tableFooterView = tableFooterView
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().contentInsetAdjustmentBehavior = .never
//        UITableView.appearance().separatorColor = .clear

        if #available(iOS 15.0, *) {
            UITableView.appearance().sectionHeaderTopPadding = 0
        } else {
            // Fallback on earlier versions
        }
    }
    
    private func setNeedsUITableViewCellThemeUpdate() {
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    //
    private func setNeedsUIButtonThemeUpdate() {
        
        UIButton.appearance().tintColor = pallete.textPrimary
        UIButton.appearance().setTitleColor(.appTextPrimary, for: .normal)
        UIButton.appearance().setTitleColor(.appTextPrimary.withAlphaComponent(0.3), for: .disabled)

        
        UIButton.appearance().titleLabel?.font = UIFont.gilroyFont(ofSize: 14, style: .semiBold)
        if let CalloutButtonClass = NSClassFromString("UICalloutBarButton") as? UIButton.Type {
            CalloutButtonClass.appearance().setTitleColor(.white, for: .normal)
        }
    }
    
    private func setNeedsUISwitchThemeUpdate() {
        UISwitch.appearance().onTintColor = pallete.textTertiary
    }
    
    private func setNeedsUILabelThemeUpdate() {
        UILabel.appearance().textColor = pallete.textPrimary
        UILabel.appearance().th.setGilroyFont(ofSize: 16, style: .medium)
    }
}
