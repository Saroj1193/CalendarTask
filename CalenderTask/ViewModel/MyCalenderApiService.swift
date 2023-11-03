//
//  MyCalenderApiService.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI
import Combine

class MyCalenderApiService {
    static let shared = MyCalenderApiService()
    
    // MARK: - Get Data from JSON File.
    func getData(_ filename: String) -> AnyPublisher<MyCalenderModel, Error> {
        guard let file = Bundle.main.path(forResource: filename, ofType: "json")
        else {
            fatalError("Couldn't load \(filename) in bundle")
        }
        
        return Future { promise in
            DispatchQueue.main.async {
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: file))
                    let mycalenderData = try JSONDecoder().decode(MyCalenderModel.self, from: data)
                    return promise(.success(mycalenderData))
                }catch let error {
                    return promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
}
