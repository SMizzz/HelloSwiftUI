//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jero on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
            NamesView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
