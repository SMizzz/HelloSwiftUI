//
//  ContentView.swift
//  AnimationDemo2
//
//  Created by Jero on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    @State private var section: Int = 0
    @State private var result: String = ""
    @State private var numArray1: [Int] = [0, 0, 0, 0]
    @State private var numArray2: [Int] = [70, 35, 50, 10, 80]
    @State private var numArray3: [Int] = [70, 35, 50, 10, 80]
    @State private var width: CGFloat = 200
    
    private var path: Path {
        
        let screenWidth = UIScreen.main.bounds.width
        var offsetX: Int = Int(screenWidth / CGFloat(numArray2.count))
        var path = Path()
        path.move(to: CGPoint(x: offsetX, y: numArray2[0]))
        
        for value in numArray2 {
            offsetX += Int(screenWidth / CGFloat(numArray2.count))
            print(value)
            path.addLine(to: CGPoint(x: offsetX, y: value))
        }
        return path
    }

    var body: some View {
        VStack {
            HStack() {
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
                    withAnimation(.easeInOut(duration: 0.4)) {
                        section = 2
                    }
                }) {
                    Text("Graph 2")
                }
                Spacer()
                
                Button(action: {
                    withAnimation(.linear(duration: 0.4)) {
                        section = 3
                    }
                }) {
                    Text("Graph 3")
                }
                Spacer()
            }
            Spacer()
            
            
            if section == 1 {
                VStack(alignment: .leading) {
                    ForEach(0 ..< numArray1.count, id: \.self) { num in
                        Rectangle()
                            .fill(.yellow)
                            .frame(width: CGFloat((numArray1[num])), height: 25)
                            .onAppear {
                                withAnimation(.easeInOut(duration: 3).repeatCount(1)) {
                                    numArray1 = [83, 107, 45, 71]
                                }
                            }
                    }
                    
                }
            } else if section == 2 {
                path.stroke(.black, lineWidth: 2)
                    .rotationEffect(.degrees(180), anchor: .center)
                    .frame(height: 100)
            } else if section == 3 {
                HStack(alignment: .bottom) {
                    ForEach(0 ..< numArray3.count, id: \.self) { num in
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 25, height: CGFloat((numArray3[num])))
                            .onAppear {
                                withAnimation(.easeInOut.repeatForever()) {
                                    
                                }
                            }
                    }
                }
            }
            
            Spacer()
            
        }
        .padding()
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
