//
//  Color+Extension.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

extension Color {
    static var blackColor = Color(hex: 0x000000)
    static var whiteColor = Color(hex: 0xFFFFFF)
    static var wineColor = Color(hex: 0x48499E)
    static var holidayColor = Color(hex: 0xFCEEED)
    static var leaveColor = Color(hex: 0xEFF0F1)
    static var lightgrayColor = Color(hex: 0xDBE0E4)
    static var darkgrayColor = Color(hex: 0xA6A6A6)
    static var sickColor = Color(hex: 0xFCE8DC)
    static var paidColor = Color(hex: 0xDFEDE9)
    static var shadowColor = Color(hex: 0x656565)
    static var grayColor = Color(hex: 0x4E617B)
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
