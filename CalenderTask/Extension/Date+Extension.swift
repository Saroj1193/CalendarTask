//
//  Date+Extension.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import Foundation
import SwiftUI

extension Date {
    func dateToString(_ formate: String = "dd MMM") -> String {
        let df = DateFormatter()
        df.dateFormat = formate
        return df.string(from: self)
    }
}
