//
//  Demo4.swift
//  AnimationDemo2
//
//  Created by Jero on 2022/10/31.
//

import SwiftUI

struct Demo4: View {
    var random: [Int] = [55, 66, 33, 44]
    @State private var number: [Int] = [0]
    
    var body: some View {
        VStack {
            HStack (alignment: .bottom) {
                ForEach(0 ..< number.count, id: \.self) { num in
                    VStack  {
                        Rectangle()
                            .fill(.clear)
                            .frame(width: 30, height: 200 - CGFloat(number[num]))
//                            .animation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 0), value: number)
                        
                        Rectangle()
                            .fill(.pink)
                            .frame(width: 30, height: CGFloat(number[num]))
//                            .animation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 0), value: number)
                    }
                }
            }
            .animation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 0), value: number)
            .frame(height: 200)
            
            Button {
                number.removeLast()
                number.append(random.randomElement() ?? 0)
                number.append(0)
                print(number)
            } label: {
                Text("Rectangle Graph")
            }

        }
    }
}

struct Demo4_Previews: PreviewProvider {
    static var previews: some View {
        Demo4()
    }
}
