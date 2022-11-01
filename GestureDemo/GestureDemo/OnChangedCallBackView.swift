//
//  OnChangedCallBackView.swift
//  GestureDemo
//
//  Created by Jero on 2022/11/01.
//

import SwiftUI

struct OnChangedCallBackView: View {
    @State private var magnification: CGFloat = 1.0
    @State private var imageName: String = "hand.point.right.fill"
    
    var body: some View {
        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
            .onChanged({ value in
                print("Magnifying: \(value)")
                self.imageName = "star.fill"
                self.magnification = value
            })
        
            .onEnded { _ in
                print("Gesture Ended.")
            }
        VStack {
            Image(systemName: imageName)
                .resizable()
                .font(.largeTitle)
                .scaleEffect(magnification)
                .gesture(magnificationGesture)
                .frame(width: 100, height: 90)
        }
        
    }
}

struct OnChangedCallBackView_Previews: PreviewProvider {
    static var previews: some View {
        OnChangedCallBackView()
    }
}
