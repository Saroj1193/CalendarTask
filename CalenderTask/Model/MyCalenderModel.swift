//
//  MyCalenderModel.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import Foundation

struct MyCalenderModel: Codable {
    let holidays: [HolidayData]
    let balance: [BalanceData]
}

struct HolidayData: Codable {
    let holidayDate, holidayTitle: String
}

struct BalanceData: Codable {
    let title, value: String
    let isPaid: Bool
}
