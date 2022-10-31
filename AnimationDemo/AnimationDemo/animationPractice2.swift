//
//  animationPractice2.swift
//  AnimationDemo
//
//  Created by Jero on 2022/10/31.
//

import SwiftUI

struct animationPractice2: View {
//    @State private var visibility: Bool = true
    @State private var isButtonVisible: Bool = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isButtonVisible.animation(.linear(duration: 0.5))) {
                Text("Show/Hide Button")
            }
            
            if isButtonVisible {
                Button {
                    
                } label: {
                    Text("Example Button")
                }
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
    }
}

struct animationPractice2_Previews: PreviewProvider {
    static var previews: some View {
        animationPractice2()
    }
}
