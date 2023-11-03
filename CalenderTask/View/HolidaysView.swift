//
//  HolidaysView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct HolidaysView: View {
    @Binding var arrHolidays: [HolidayData]
    @State var isExpand: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 20) {
                Text(strHolidays).fontBold20.foregroundColor(.blackColor)
                Spacer(minLength: 0)
                
                Button(action: {
                    self.isExpand.toggle()
                }, label: {
                    Image(self.isExpand ? "up" : "down")
                })
            }
            .padding(.bottom, isExpand ? 20 : 0)
            if self.isExpand {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(self.arrHolidays.indices, id: \.self) { i in
                        HolidayCellView(data: Binding.constant(self.arrHolidays[i]))
                    }
                }
            }
        }
        .padding()
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.lightgrayColor, lineWidth: 1)
        )
        .background(Rectangle().fill(Color.white).cornerRadius(8).shadow(color: .shadowColor, radius: 1, y: 2))
    }
}

#Preview {
    HolidaysView(arrHolidays: Binding.constant([HolidayData(holidayDate: "2023-11-13", holidayTitle: "Day off for Diwali/Deepavali")]))
}
