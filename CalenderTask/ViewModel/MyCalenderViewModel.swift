//
//  MyCalenderViewModel.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import Foundation
import SwiftUI
import Combine

class MyCalenderViewModel: ObservableObject {
    // MARK: - Enumeration For API calling and Loading
    enum ViewState {
        case START
        case LOADING
        case SUCCESS(data: MyCalenderModel)
        case FAILURE(error: String)
    }
    
    // MARK: - Published, Private, Variable
    @Published var currentState: ViewState = .START
    private var cancelables = Set<AnyCancellable>()
    @Published var mycalendarData: [MyCalenderModel] = []
    var isLoad: Bool = true
    
    init() {
        getData()
    }
    
    // MARK: - API Call For Get Health Summary data
    func getData() {
        self.currentState = .LOADING
        MyCalenderApiService.shared.getData("mycalender")
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished: break
                case .failure(let error): self.currentState = .FAILURE(error: error.localizedDescription)
                }
            }, receiveValue: { data in
                self.currentState = .SUCCESS(data: data)
                self.mycalendarData = [data]
            }) .store(in: &cancelables)
    }
}
