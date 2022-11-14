//
//  ContentView.swift
//  GlobalAppDemo
//
//  Created by Jero on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    private let title: String = "Hello World!"
    private let items: [String] = [
        "England",
        "Wakanda",
        "Japan",
        "USA",
        "Germany",
        "Wales"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                    }
                }
                Section {
                    Text("Total \(items.count) countries")
                }
            }
            .navigationTitle(Text("Hello World!"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
