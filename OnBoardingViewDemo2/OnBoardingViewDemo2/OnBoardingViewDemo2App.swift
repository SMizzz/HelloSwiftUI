//
//  OnBoardingViewDemo2App.swift
//  OnBoardingViewDemo2
//
//  Created by Jero on 2022/11/15.
//

import SwiftUI

@main
struct OnBoardingViewDemo2App: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingContainerView()
            } else {
                HomeView()
            }
        }
    }
}
