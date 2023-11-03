//
//  MyCalendarView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct MyCalendarView: View {
    @ObservedObject var viewModel: MyCalenderViewModel = MyCalenderViewModel()
    
    var body: some View {
        NavigationView {
            Color.white.ignoresSafeArea().overlay {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        if viewModel.mycalendarData.count > 0 {
                            // MARK: - Calender View
                            CalendarView(arrHolidays: Binding.constant(viewModel.mycalendarData[0].holidays))
                            // MARK: - Time Request View
                            TimeRequestView()
                            // MARK: - Balance View
                            MyTimeBalanceView(balanceArr: Binding.constant(viewModel.mycalendarData[0].balance))
                            // MARK: - Holiday View
                            HolidaysView(arrHolidays: Binding.constant(viewModel.mycalendarData[0].holidays))
                        }
                    }
                    .padding(.horizontal, 16)
                }
                .padding(.top)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    NavigationTopView()
                    
                }
            }
        }
    }
}

#Preview {
    MyCalendarView(viewModel: MyCalenderViewModel())
}
