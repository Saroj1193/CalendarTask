//
//  Font+Extension.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import Foundation
import SwiftUI

extension Font {
    enum LatoFont {
        case regular
        case bold
        case semiBold
        case hairline
        case black
        case light
        case medium
        
        var value: String {
            switch self {
            case .regular:
                return "Lato-Regular"
            case .bold:
                return "Lato-Bold"
            case .semiBold:
                return "Lato-Semibold"
            case .hairline:
                return "Lato-Hairline"
            case .black:
                return "Lato-Black"
            case .light:
                return "Lato-Light"
            case .medium:
                return "Lato-Medium"
            }
        }
    }
    
    static func latoFont(_ type: LatoFont, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
}
