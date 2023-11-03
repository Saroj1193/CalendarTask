//
//  String+Extension.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import Foundation
import SwiftUI

extension String {
    func getDate(_ formate: String = "yyyy-MM-dd") -> Date {
        let df = DateFormatter()
        df.dateFormat = formate
        if let date = df.date(from: self) {
            return date
        }
        return Date()
    }
}
