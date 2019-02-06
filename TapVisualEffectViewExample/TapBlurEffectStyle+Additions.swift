//
//  TapBlurEffectStyle+Additions.swift
//  TapVisualEffectViewExample
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import enum	TapVisualEffectView.TapBlurEffectStyle

// MARK: - CustomStringConvertible
extension TapBlurEffectStyle: CustomStringConvertible {
	
	public var description: String {
		
		switch self {
			
		case .none:			return "None"
		case .light:		return "Light"
		case .extraLight:	return "Extra Light"
		case .dark:			return "Dark"
		case .prominent:	return "Prominent"
		case .regular:		return "Regular"

		}
	}
}
