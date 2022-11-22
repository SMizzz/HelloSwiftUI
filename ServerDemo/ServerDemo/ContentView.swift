//
//  ContentView.swift
//  ServerDemo
//
//  Created by Jero on 2022/11/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var resultsData: MainViewModel
    
    var body: some View {
        VStack {
            List(resultsData.oceanData) { (item) in
                Text(item.day)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MainViewModel())
    }
}
