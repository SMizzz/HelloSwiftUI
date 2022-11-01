//
//  Demo3.swift
//  AnimationDemo2
//
//  Created by Jero on 2022/10/31.
//

import SwiftUI

struct RandomNumbers {
    var randomInts_1: [Int] = []
    var randomInts_2: [Int] = []
    var randomInts_3: [Int] = []
    
    init() {
        for _ in 0...10 {
            let randomInt: Int = Int.random(in: 0...99)
            print("\(randomInt)")
            randomInts_1.append(randomInt)
        }
        
        for _ in 0...10 {
            let randomInt: Int = Int.random(in: 0...99)
            print("\(randomInt)")
            randomInts_2.append(randomInt)
        }
        
        for _ in 0...10 {
            let randomInt: Int = Int.random(in: 0...99)
            print("\(randomInt)")
            randomInts_3.append(randomInt)
        }
    }
}

struct Demo3: View {
    var randomNumbers: RandomNumbers = RandomNumbers()
    
    @State private var section: Int = 1
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    withAnimation(.linear(duration: 0.5)) {
                        section = 1
                    }
                }) {
                    Text("Graph 1")
                }
                Spacer()
                Button(action: {
                    withAnimation(.linear(duration: 0.5)) {
                        section = 2
                    }
                }) {
                    Text("Graph 2")
                }
                Spacer()
                Button(action: {
                    withAnimation(.linear(duration: 0.5)) {
                        section = 3
                    }
                }) {
                    Text("Graph 3")
                }
                Spacer()
            }
            Spacer()
            if section == 1 {
                Text("Graph 1")
                    .font(.largeTitle)
                
                ForEach(randomNumbers.randomInts_1, id:\.self) { number in
                    HStack {
                        Text("\(number)")
                            .frame(width: 24)
                        Rectangle()
                            .frame(width: CGFloat(number) * 2, height:20)
                            .foregroundColor(Color.purple)
                        Spacer()
                    }
                }
            } else if section == 2 {
                Text("Graph 2")
                    .font(.largeTitle)
                
                ForEach(randomNumbers.randomInts_2, id:\.self) { number in
                    HStack {
                        Text("\(number)")
                            .frame(width: 24)
                        Rectangle()
                            .frame(width: CGFloat(number) * 2, height:20)
                            .foregroundColor(Color.blue)
                        Spacer()
                    }
                }
            } else if section == 3 {
                Text("Graph 3")
                    .font(.largeTitle)
                
                ForEach(randomNumbers.randomInts_3, id:\.self) { number in
                    HStack {
                        Text("\(number)")
                            .frame(width: 24)
                        Rectangle()
                            .frame(width: CGFloat(number) * 2, height:20)
                            .foregroundColor(Color.green)
                        Spacer()
                    }
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct Demo3_Previews: PreviewProvider {
    static var previews: some View {
        Demo3()
    }
}
