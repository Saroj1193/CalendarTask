//
//  MyTimeBalanceView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct MyTimeBalanceView: View {
    @Binding var balanceArr: [BalanceData]
    @State var isExpand: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Text(strMyTimeOffBalance).fontBold20.foregroundColor(.blackColor)
                Spacer(minLength: 0)
                
                Button(action: {
                    self.isExpand.toggle()
                }, label: {
                    Image(self.isExpand ? "up" : "down")
                })
            }
            .padding(.bottom, isExpand ? 20 : 0)
            if self.isExpand {
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(self.balanceArr.indices, id: \.self) { i in
                            BalanceView(data: Binding.constant(self.balanceArr[i]))
                        }
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
    MyTimeBalanceView(balanceArr: Binding.constant([BalanceData(title: "Paid vacation", value: "12.00 days available", isPaid: true), BalanceData(title: "Paid vacation", value: "14.00 days available", isPaid: false)]))
}
