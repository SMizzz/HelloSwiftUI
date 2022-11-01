//
//  LongTapGestureView.swift
//  GestureDemo
//
//  Created by Jero on 2022/11/01.
//

import SwiftUI

// long press: Text, Image 복사 저장 기능
struct LongTapGestureView: View {
    let longPress = LongPressGesture()
        .onEnded { _ in
            print("Long Press")
        }
    
    let longPress2 = LongPressGesture(minimumDuration: 10, maximumDistance: 25)
        .onEnded { _ in
            print("Long Press")
        }
    
    var body: some View {
        Spacer()
        Image(systemName: "hand.point.right.fill")
            .gesture(longPress)
        Spacer()
        Image(systemName: "hand.point.right.fill")
            .gesture(longPress2)
        Spacer()
    }
    
}

struct LongTapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        LongTapGestureView()
    }
}
