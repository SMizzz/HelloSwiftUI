//
//  ContentView.swift
//  UIScrollViewDemo
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyScrollView(text: "UIView In SwiftUI")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
