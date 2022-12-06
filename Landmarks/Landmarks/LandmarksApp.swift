//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jero on 2022/11/25.
//

import SwiftUI

/*
@main은 진입점을 나타내고,
LandmarksApp 구조체를 먼저 실행하는 지시자이다.
 
안에 보여주는 단위는 Scene(장면)이라는 단위이다.
App 프로토콜을 따르는 LanmarksApp 구조체의 장면을 보여주는 것이다.
 
WindowGroup 한 장면에 그룹핑으로 나와서 잡히게 된다.
*/

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
