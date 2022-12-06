//
//  ContentView.swift
//  MyMultiApp
//
//  Created by Jero on 2022/11/30.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTabIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            Text("Tab Content 1").tabItem {
                Image(systemName: "xbox.logo")
                Text("xbox")
            }.tag(1)
            Text("Tab Content 2").tabItem {
                Image(systemName: "playstation.logo")
                Text("Playstation")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
