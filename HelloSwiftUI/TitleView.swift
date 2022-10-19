//
//  TitleView.swift
//  HelloSwiftUI
//
//  Created by Jero on 2022/10/18.
//

import SwiftUI

struct TitleView: View {
    func sayHello() {
        print("안녕하세요")
    }
    
    var body: some View {
        MyVStack {
            Button(action: {
                print("박수!!!!")
            }) {
                Image(systemName: "hands.sparkles")
                    .renderingMode(.original)
                    .resizable()
                // 이미지 리사이즈 방법
                // #1 이런 식으로 aspectRatio와 padding을 함께 쓰는 방법이 있고,
//                    .aspectRatio(contentMode: .fit)
//                    .padding()
//                    .padding()
//                    .padding()
                // #2 사이즈를 정하는 방법이 있다.
                    .frame(width: 130, height: 140)
                    .padding()
            }
            .buttonStyle(MyButtonStyle())
            
            Text("Hello No.1")
                .font(.largeTitle)
                .bold()
                .underline()
            
            // 로딩중일때 자주 사용된다.
            .onAppear {
                print("나타났어요")
            }
            
            .onDisappear {
                print("사라졌어요")
            }
        }
    }
}

struct MyButtonStyle: ButtonStyle {
    var backgroundColor: Color = .purple
    var cornerRadius: CGFloat = 10
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: cornerRadius).fill(backgroundColor))
            .scaleEffect(configuration.isPressed ? 0.55 : 0.6)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
