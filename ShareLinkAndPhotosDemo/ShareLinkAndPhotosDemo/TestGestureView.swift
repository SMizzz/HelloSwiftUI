//
//  TestGestureView.swift
//  ShareLinkAndPhotosDemo
//
//  Created by Jero on 2022/11/16.
//

import SwiftUI

struct TestGestureView: View {
    @State private var isRotating = 0.0
    @State private var isShowingNext: Bool = false
    @State private var isShowingFav: Bool = false
    @State private var isShowingInfo: Bool = false
    
    @State private var cardOffset: CGSize = .zero
    
    @State private var isMinju: Bool = false // sheet 띄우는 토글 변수
    
    var body: some View {
        VStack {
            Text("새끼발가락을 움직일 수 있는 건 유전이다.")
                .padding(20)
                .font(.title3)
                .fontWeight(.thin)
                .frame(width: 330, height: 250)
                .background(.white)
                .cornerRadius(20)
                .shadow(color:.gray .opacity(0.3),radius: 5)
                
            Image(systemName: "hand.draw")
                .font(.largeTitle)
                .rotationEffect(.degrees(isRotating))
                .onAppear {
                    withAnimation(.linear(duration: 1)
                        .speed(1.5).repeatForever(autoreverses: false)) {
                                   isRotating = 90.0
                       }
                }
            
            

        }
        
    }
}

struct TestGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TestGestureView()
    }
}
