//
//  Landmark.swift
//  Landmarks
//
//  Created by Jero on 2022/11/25.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable, Identifiable {
    var name: String
    var category: String
    var city: String
    var state: String
    var id: Int
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
    var description: String
    
    // 밖에서 접근하지 못하는 imageName
    // Landmark 모델에서 할 일들을 추가해줌
    private var imageName: String
    var image: Image {
        get {
            return Image(imageName)
        }
    }
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        get {
            return CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    }
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
}

