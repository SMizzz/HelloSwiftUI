//
//  CarStore.swift
//  ServerDemo_Car
//
//  Created by Jero on 2022/11/22.
//

import Foundation

class CarStore: ObservableObject {
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
