//
//  ContentView.swift
//  AnimationDemo
//
//  Created by Jero on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0.0
    @State private var scale: CGFloat = 1.0
    
    
    var body: some View {
        VStack {
            /*
             Button(action: {
             rotation = (rotation < 360) ? rotation + 60 : 0
             scale = (scale < 2.8) ? scale + 0.3 : 1
             }) {
             Text("Click to animate")
             .rotationEffect(.degrees(rotation))
             .animation(.easeInOut(duration: 0.5), value: rotation)
             .scaleEffect(scale)
             }
             .padding()
             .padding()
             
             Button(action: {
             rotation = (rotation < 360) ? rotation + 60 : 0
             scale = (scale < 2.8) ? scale + 0.3 : 1
             }) {
             Text("Click to animate")
             .scaleEffect(scale)
             .rotationEffect(.degrees(rotation))
             .animation(.spring(
             response: 1,
             dampingFraction: 0.1,
             blendDuration: 0
             ), value: scale)
             
             }
             
             
             Button(action: {
             rotation = (rotation < 360) ? rotation + 60 : 0
             scale = (scale < 2.8) ? scale + 0.3 : 1
             }) {
             Text("Click to animate")
             .scaleEffect(scale)
             .rotationEffect(.degrees(rotation))
             .animation(.linear(duration: 1).repeatCount(10, autoreverses: true))
             
             }
             */
            Button(action: {
                withAnimation(.linear(duration: 1).repeatForever(autoreverses: true)) {
                    rotation = (rotation < 360) ? rotation + 60 : 0
                }
                scale = (scale < 2.8) ? scale + 0.3  : 1
            }) {
                Text("Click to animate")
                    .scaleEffect(scale)
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear(duration: 1).repeatForever(autoreverses: true), value: rotation)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
