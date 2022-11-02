//
//  ContentView.swift
//  HelloUIView
//
//  Created by Jero on 2022/11/02.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            MyUILabel(text: "Hello Mizy")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
