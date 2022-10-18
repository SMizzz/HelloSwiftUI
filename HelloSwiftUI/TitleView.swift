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
        VStack {
            Button("Hello") {
                print("Hello")
            }
            
            Button("Hi", action: {
                print("Hi")
            })
            
            Button("인사하기 클로저", action: sayHello)
                .padding()
            
            Button(action: {
                print("인사해주세요")
            }) {
                Image(systemName: "hands.sparkles")
                    .renderingMode(.original)
                    .resizable()
                // 이미지 리사이즈 방법
                // #1 이런 식으로 aspectRatio와 padding을 함께 쓰는 방법이 있고,
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .padding()
                    .padding()
                // #2 사이즈를 정하는 방법이 있다.
                //                    .frame(width: 60, height: 50)
                //                    .modifier(StandardTextColor())
                
            }
            
            Text("Hello No.1")
                .font(.largeTitle)
                .bold()
                .underline()
            Button("인삿말") {
                sayHello()
            }
            .padding()
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
