//
//  Feature.swift
//  OnBoardingViewDemo2
//
//  Created by Jero on 2022/11/15.
//

import SwiftUI

struct Feature: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var isOnStartButton: Bool
}
