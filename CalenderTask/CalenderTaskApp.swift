//
//  CalenderTaskApp.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

@main
struct CalenderTaskApp: App {
    var body: some Scene {
        WindowGroup {
            MyCalendarView()
                .preferredColorScheme(.light)
        }
    }
}
