//
//  HomeView.swift
//  OnBoardingViewDemo2
//
//  Created by Jero on 2022/11/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.red
            Text("Home View")
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
