//
//  CarStore.swift
//  ListNavDemo
//
//  Created by Jero on 2022/10/25.
//

import SwiftUI
import Combine

class CarStore: ObservableObject {
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
