//
//  PostIt.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/08.
//

import Foundation
import SwiftUI

struct PostIt: Codable, Identifiable {
    var id: String
    var user: String
    var memo: String
    var colorIndex: Int
    var createdAt: Double
    
    var color: Color {
        switch colorIndex {
        case 0:
            return .cyan
        case 1:
            return .purple
        case 2:
            return .blue
        case 3:
            return .yellow
        case 4:
            return .brown
        default:
            return .white
        }
    }
    
    var createdDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_kr")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateCreatedAt = Date(timeIntervalSince1970: createdAt)
        return dateFormatter.string(from: dateCreatedAt)
    }
    
    var textForSharing: String {
        return "\(memo)\n\(user)\n\(createdDate)"
    }
}
