//
//  ObservableAndEnvironment_TutorialApp.swift
//  ObservableAndEnvironment_Tutorial
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI

@main
struct ObservableAndEnvironment_TutorialApp: App {
//    let demoData: DemoData = DemoData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DemoData())
        }
    }
}
