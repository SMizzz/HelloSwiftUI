//
//  ContentView.swift
//  ListAndTabDemo
//
//  Created by Jero on 2022/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 3
    
    var body: some View {
        TabView(selection: $tabSelection) {
            NavigationView {
                SecondView()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }.tag(1)
            
            NavigationView {
                SecondView()
            }
            .tabItem {
                Image(systemName: "house.circle")
                Text("Home")
            }.tag(2)
            
            NavigationView {
                SecondView()
            } .tabItem {
                Image(systemName: "music.note")
                Text("Home")
            }.tag(3)
        }
    }
}

struct SecondView: View {
    var body: some View {
        List {
            NavigationLink(destination: ThirdView()) {
                VStack {
                    Text("Hello")
                        .font(.largeTitle)
                }
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello")
        }
        .navigationTitle(Text("Hello Jero"))
    }
}

struct ThirdView: View {
    var body: some View {
        List {
            Text("Hello World")
                .font(.largeTitle)
        }
        .navigationTitle(Text("Hi World"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
