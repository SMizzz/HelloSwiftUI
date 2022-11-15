//
//  OnboardingContainerView.swift
//  OnBoardingViewDemo2
//
//  Created by Jero on 2022/11/15.
//

import SwiftUI

struct OnboardingContainerView: View {
    @State private var selectedPage = 0
       var body: some View {
           VStack {
               HStack {
                   Button {
                       if selectedPage > 0 {
                           withAnimation { selectedPage -= 1 }
                       }
                   } label: {
                       Image(systemName: "chevron.left")
                   }
                   
                   TabView(selection: $selectedPage) {
                       Text("Hi").tag(0)
                       Text("Hello").tag(1)
                       Text("Welcome").tag(2)
                   }
                   .tabViewStyle(PageTabViewStyle())
                   .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                   
                   Button {
                       if selectedPage < 2 {
                           withAnimation { selectedPage += 1 }
                       }
                   } label: {
                       Image(systemName: "chevron.right")
                   }
                   
//                   Button("<") { if selectedPage > 0 {
//                       withAnimation { selectedPage -= 1 }
//                   } }
//                   Spacer().frame(width: 40)
//                   Button(">") { if selectedPage < 2 {
//                       withAnimation { selectedPage += 1 }
//                   } }
               }
//               TabView(selection: $selectedPage) {
//                   Text("Hi").tag(0)
//                   Text("Hello").tag(1)
//                   Text("Welcome").tag(2)
//               }
//               .tabViewStyle(PageTabViewStyle())
//               .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
           }
       }
//    var body: some View {
//        VStack {
//
//            TabView {
//                ForEach(features) { feature in
//                    OnboardingContentView(feature: feature)
//                }
//            }
//            .tabViewStyle(PageTabViewStyle())
//            .edgesIgnoringSafeArea(.all)
//        }
//    }
}

struct OnboardingContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContainerView()
    }
}
