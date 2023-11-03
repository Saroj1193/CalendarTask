//
//  View+Extension.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import Foundation
import SwiftUI

extension View {
    public func gradientForeground(colors: [Color], cornerRadius: CGFloat) -> some View {
        self.overlay(
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .bottomLeading, endPoint: .topTrailing)
        )
        .mask(self)
        .cornerRadius(cornerRadius)
    }
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

// MARK: - View extion for font
extension View {
    func fontLatoBold(_ fontSize: CGFloat) -> some View {
        modifier(LatoBoldFontModifier(fontSize: fontSize))
    }
    
    func fontLatoRegular(_ fontSize: CGFloat) -> some View {
        modifier(LatoRegularFontModifier(fontSize: fontSize))
    }
    
    func fontLatoSemiBold(_ fontSize: CGFloat) -> some View {
        modifier(LatoSemiboldFontModifier(fontSize: fontSize))
    }
    
    func fontLatoLight(_ fontSize: CGFloat) -> some View {
        modifier(LatoLightFontModifier(fontSize: fontSize))
    }
    
    func fontLatoBlack(_ fontSize: CGFloat) -> some View {
        modifier(LatoBlackFontModifier(fontSize: fontSize))
    }
    
    func fontLatoMedium(_ fontSize: CGFloat) -> some View {
        modifier(LatoMediumFontModifier(fontSize: fontSize))
    }
    
    func fontLatoHairline(_ fontSize: CGFloat) -> some View {
        modifier(LatoHairlineFontModifier(fontSize: fontSize))
    }
}
