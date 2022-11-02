//
//  CoinSinging.swift
//  CoinSingingMapList
//
//  Created by Jero on 2022/11/02.
//

import Foundation
import CoreLocation

struct CoinSinging: Codable, Identifiable, Hashable {
    let id = UUID()
    var name: String
    var url: String
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

