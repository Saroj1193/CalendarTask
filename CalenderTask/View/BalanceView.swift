//
//  BalanceView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct BalanceView: View {
    @Binding var data: BalanceData
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text(data.title).fontRegular16
            Text(data.value).fontbold14
        }
        .foregroundColor(.blackColor)
        .padding(.vertical, 10)
        .frame(width: (UIScreen.screenWidth - 74) * 0.5)
        .background(data.isPaid ? Color.paidColor : Color.sickColor)
        .cornerRadius(8)
    }
}

#Preview {
    BalanceView(data: Binding.constant(BalanceData(title: "Paid vacation", value: "12.00 days available", isPaid: true)))
}
