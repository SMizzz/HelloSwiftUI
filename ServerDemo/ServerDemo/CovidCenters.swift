//
//  CovidClinic.swift
//  ServerDemo
//
//  Created by Jero on 2022/11/22.
//

import Foundation

struct CovidCenters: Codable, Hashable {
    var currentCount: Int
    var data: [CovidCenter]
    var matchCount: Int
    var page: Int
    var perPage: Int
    var totalCount: Int
}

struct CovidCenter: Codable, Hashable {
    var address: String
    var centerName: String
    var centerType: String
    var createdAt: String
    var facilityName: String
    var id: Int
    var lat: String
    var lng: String
    var org: String
    var phoneNumber: String
    var sido: String
    var sigungu: String
    var updatedAt: String
    var zipCode: String
}

class CovidCenterStore: ObservableObject {
    @Published var centers: [CovidCenter]
    
    init(centers: [CovidCenter] = []) {
        self.centers = centers
    }
}
