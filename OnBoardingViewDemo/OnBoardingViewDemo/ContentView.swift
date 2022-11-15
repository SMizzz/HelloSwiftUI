//
//  ContentView.swift
//  OnBoardingViewDemo
//
//  Created by Jero on 2022/11/15.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("_shouldShowOnboarding") private var shouldShowOnboarding: Bool = true
//    @State private var shouldShowOnboarding: Bool = true
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("You are in the main app now!")
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
        .padding()
    }
}

// Onboarding
struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        TabView {
            PageView(
                title: "Push Notifications",
                message: "Enable notifications to stay up to date with friends",
                imageName: "bell",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding)
            PageView(title: "BookMarks",
                     message: "Enable notifications to stay up to date with friends",
                     imageName: "bookmark",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding)
            PageView(title: "Flights",
                     message: "Enable notifications to stay up to date with friends",
                     imageName: "airplane",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding)
            PageView(title: "Home",
                     message: "Enable notifications to stay up to date with friends",
                     imageName: "house",
                     showsDismissButton: true,
                     shouldShowOnboarding: $shouldShowOnboarding)

        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    let title: String
    let message: String
    let imageName: String
    let showsDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 42))
                .padding()
            
            Text(message)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showsDismissButton {
                Button {
                    shouldShowOnboarding.toggle()
                } label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(.white)
                        .background(.purple)
                        .cornerRadius(6)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
