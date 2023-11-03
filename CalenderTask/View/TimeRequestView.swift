//
//  TimeRequestView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct TimeRequestView: View {
    var body: some View {
        HStack(spacing: 20) {
            Text(strTimeOffRequests).fontBold20.foregroundColor(.blackColor)
            Spacer(minLength: 0)
            Button(action: {}, label: {
                HStack(spacing: 6) {
                    Image("plus")
                    Text(strNew).fontSemibold16.foregroundColor(.wineColor)
                }
            })
            
            Button(action: {}, label: {
                Image("down")
            })
        }
        .padding()
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.darkgrayColor, lineWidth: 1)
        )
        .background(Rectangle().fill(Color.white).cornerRadius(8).shadow(color: .shadowColor, radius: 1, y: 2))
    }
}

#Preview {
    TimeRequestView()
}
