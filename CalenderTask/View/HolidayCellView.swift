//
//  HolidayCellView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct HolidayCellView: View {
    @Binding var data: HolidayData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 20) {
                Image("calender")
                VStack(alignment: .leading, spacing: 4) {
                    Text(data.holidayDate.getDate("yyyy-MM-dd").dateToString("dd MMM")).fontbold14
                    Text(data.holidayTitle).fontRegular16.foregroundColor(.grayColor)
                }
            }
            
        }
        .foregroundColor(.blackColor)
        .padding(.vertical, 10)
    }
}

#Preview {
    HolidayCellView(data: Binding.constant(HolidayData(holidayDate: "2023-11-13", holidayTitle: "Day off for Diwali/Deepavali")))
}
