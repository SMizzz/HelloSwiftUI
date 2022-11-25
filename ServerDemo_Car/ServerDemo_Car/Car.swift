//
//  Car.swift
//  ServerDemo_Car
//
//  Created by Jero on 2022/11/22.
//

import Foundation

struct Car : Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}
