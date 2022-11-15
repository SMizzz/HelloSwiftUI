//
//  OnboardingContentView.swift
//  OnBoardingViewDemo2
//
//  Created by Jero on 2022/11/15.
//

import SwiftUI

let features = [
    Feature(
        title: "AI",
        subtitle: "Analze your expenses",
        image: "LikeLion_01",
        isOnStartButton: false),
    Feature(
        title: "Fronted",
        subtitle: "Analze your expenses",
        image: "LikeLion_02", isOnStartButton: false),
    Feature(
        title: "Back-End",
        subtitle: "Analze your expenses",
        image: "LikeLion_03",
        isOnStartButton: true)
]

struct OnboardingContentView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var feature: Feature
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.gray, Color.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack {
                Spacer()
                Image(feature.image)
                    .resizable()
                    .scaledToFit()
                Spacer()
                VStack(spacing: 20) {
                    Text(feature.title)
                        .font(.title3)
                        .bold()
                    Text(feature.subtitle)
                        .font(.title3)
                }
                .padding()
                Spacer()
                
                if feature.isOnStartButton {
                    Button {
                        isOnboarding = false
                    } label: {
                        Text("Start")
                            .padding()
                            .background(
                                Capsule().strokeBorder(.white, lineWidth: 1.5)
                                    .frame(width: 100)
                            )
                    }
                }
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContentView(feature: features[0])
    }
}
