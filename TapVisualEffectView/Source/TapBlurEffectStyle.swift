//
//  TapBlurEffectStyle.swift
//  TapVisualEffectView
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import class UIKit.UIBlurEffect.UIBlurEffect
import class UIKit.UIColor.UIColor

/// Tap Blur Effect Style.
///
/// - light: Light blur style.
/// - extraLight: Extra light blur style.
/// - dark: Dark blur style.
/// - none: No blur.
public enum TapBlurEffectStyle {
    
    case light
    case extraLight
    case dark
    case none
    
    internal var blurEffect: UIBlurEffect? {
        
        switch self {
            
        case .light:
            
            return UIBlurEffect(style: .light)
            
        case .extraLight:
            
            return UIBlurEffect(style: .extraLight)
            
        case .dark:
            
            return UIBlurEffect(style: .dark)
            
        default:
            
            return nil
        }
    }
    
    internal var tintColor: UIColor {
        
        switch self {
            
        case .light:
            
            return .lightBlurTintColor
            
        case .extraLight:
            
            return .extraLightBlurTintColor
            
        case .dark:
            
            return .darkBlurTintColor
            
        default:
            
            return .clear
        }
    }
}
