//
//  LatoFonts.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - Lato Semibold font
struct LatoSemiboldFontModifier: ViewModifier {
    let fontSize: CGFloat

    func body(content: Content) -> some View { content.font(.latoFont(.semiBold, size: fontSize)) }
}
// MARK: - Lato Light font
struct LatoLightFontModifier: ViewModifier {
    let fontSize: CGFloat

    func body(content: Content) -> some View {
        content.font(.latoFont(.light, size: fontSize))
    }
}
// MARK: - Lato Black font
struct LatoBlackFontModifier: ViewModifier {
    let fontSize: CGFloat

    func body(content: Content) -> some View { content.font(.latoFont(.black, size: fontSize))
    }
}
// MARK: - Lato Regular font
struct LatoRegularFontModifier: ViewModifier {
    let fontSize: CGFloat

    func body(content: Content) -> some View { content.font(.latoFont(.regular, size: fontSize))
    }
}
// MARK: - Lato Bold font
struct LatoBoldFontModifier: ViewModifier {
    let fontSize: CGFloat

    func body(content: Content) -> some View { content.font(.latoFont(.bold, size: fontSize))
    }
}
// MARK: - Lato Hairline font
struct LatoHairlineFontModifier: ViewModifier {
    let fontSize: CGFloat

    func body(content: Content) -> some View { content.font(.latoFont(.hairline, size: fontSize))
    }
}
// MARK: - Lato Medium font
struct LatoMediumFontModifier: ViewModifier {
    let fontSize: CGFloat

    func body(content: Content) -> some View { content.font(.latoFont(.medium, size: fontSize)) }
}

