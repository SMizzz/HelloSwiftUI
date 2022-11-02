//
//  MainTabView.swift
//  CoinSingingMapList
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct MainTabView: View {
    @State private var tabSelection: Int = 1
    var body: some View {
        VStack {
            TabView(selection: $tabSelection) {
                WebTabView().tabItem {
                    Image(systemName: "safari")
                    Text("Web")
                }
                .tag(1)
                
                MapTabView().tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                .tag(2)
            }
            .padding()
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
