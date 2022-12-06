//
//  Car.swift
//  ListNavDemo
//
//  Created by Neil Smyth on 10/15/19.
//  Copyright © 2019 eBookFrenzy. All rights reserved.
//

import Foundation

struct CarInfo: Codable {
    var Id: String
    var cars: Car
}

struct Car : Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}

