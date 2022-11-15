//
//  OnboardingContainerView.swift
//  OnBoardingViewDemo2
//
//  Created by Jero on 2022/11/15.
//

import SwiftUI

struct OnboardingContainerView: View {
    var body: some View {
        TabView {
            ForEach(features) { feature in
                OnboardingContentView(feature: feature)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContainerView()
    }
}
