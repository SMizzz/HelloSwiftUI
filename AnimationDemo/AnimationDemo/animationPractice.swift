//
//  animationPractice.swift
//  AnimationDemo
//
//  Created by Jero on 2022/10/31.
//

import SwiftUI

struct animationPractice: View {
    var body: some View {
        VStack {

            Button {
                
            } label: {
                Image(systemName: "airplane")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            
            Rectangle()
                .frame(width: 250, height: 100)
        }
    }
}

struct animationPractice_Previews: PreviewProvider {
    static var previews: some View {
        animationPractice()
    }
}
