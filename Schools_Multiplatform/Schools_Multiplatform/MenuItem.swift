//
//  MenuItem.swift
//  Schools_Multiplatform
//
//  Created by Jero on 2022/11/30.
//

import Foundation

struct MenuItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

let menuItems: [MenuItem] = [
    MenuItem(name: "Schools")
]

