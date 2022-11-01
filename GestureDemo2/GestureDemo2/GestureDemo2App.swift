//
//  GestureDemo2App.swift
//  GestureDemo2
//
//  Created by Jero on 2022/11/01.
//

import SwiftUI

@main
struct GestureDemo2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TimerData())
        }
    }
}
