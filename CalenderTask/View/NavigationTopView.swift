//
//  NavigationTopView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct NavigationTopView: View {
    // MARK: - Top Navigation View
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Click menu")
                } label: {
                    Image("menu")
                }
                
                Spacer()
                
                Image("logo").resizable().frame(width: 30, height: 30)
                
                Spacer()
                
                Button {
                    print("Click Profile")
                } label: {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal, -10)
            LinearGradient(colors: [.lightgrayColor, .darkgrayColor], startPoint: .bottom, endPoint: .top)
                   .frame(height: 2)
                   .opacity(0.6).padding(.horizontal, -16)
        }
    }
}

#Preview {
    NavigationTopView()
}
