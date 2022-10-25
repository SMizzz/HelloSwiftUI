//
//  TimerTutorialApp.swift
//  TimerTutorial
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI

@main
struct TimerTutorialApp: App {
//    let timerData = TimerData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TimerData())
        }
    }
}
