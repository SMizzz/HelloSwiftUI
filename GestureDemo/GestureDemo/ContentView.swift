//
//  ContentView.swift
//  GestureDemo
//
//  Created by Jero on 2022/11/01.
//

import SwiftUI

// Tap Gesture 실습
struct ContentView: View {
    
    // 2번 연속으로 눌렀을 때
    let tap = TapGesture(count: 2).onEnded { _ in
        print("Tapped 2")
    }
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "hand.point.right.fill")
                .animation(.easeIn.repeatForever())
                .gesture(TapGesture().onEnded({ _ in
                    print("Tapped 1")
                }))
            Spacer()
            Image(systemName: "hand.point.right.fill")
                .gesture(tap)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
