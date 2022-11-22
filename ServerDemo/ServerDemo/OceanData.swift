//
//  OceanData.swift
//  ServerDemo
//
//  Created by Jero on 2022/11/22.
//

import Foundation

struct Result: Codable {
    var result : OceanData
}

struct OceanData: Codable {
  var data : [OceanInfo]
}

struct OceanInfo: Codable, Identifiable {
    let id: UUID = UUID()
    var name: String
    var type: String
    var fileName: String
    var hour: String
    var day: String
    var filePath: String
}
