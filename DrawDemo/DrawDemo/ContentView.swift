//
//  ContentView.swift
//  DrawDemo
//
//  Created by Jero on 2022/10/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .stroke(lineWidth: 15)
                    .fill(Color("OlympicFlag_Blue"))
                    .frame(width: 150, height: 150)
                    .offset(CGSize(width: -105, height: -25))
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 15)
                            .fill(.black)
                            .frame(width: 150, height: 150)
                            .offset(CGSize(width: 0, height: -25))
                        Circle()
                            .stroke(lineWidth: 15)
                            .fill(Color("OlympicFlag_PinkRed"))
                            .frame(width: 150, height: 150)
                            .offset(CGSize(width: 105, height: -25))
                        Circle()
                            .stroke(lineWidth: 15)
                            .fill(Color("OlympicFlag_Yellow"))
                            .frame(width: 150, height: 150)
                            .offset(CGSize(width: -52, height: 70))
                            .overlay {
                                Circle()
                                    .stroke(lineWidth: 15)
                                    .fill(Color("OlympicFlag_Green"))
                                    .frame(width: 150, height: 150)
                                    .offset(CGSize(width: 52, height: 70))
                            }
                    }
            }
        }
        .padding()
    }
}

struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 10, y: 0))
        path.addLine(to: CGPoint(x: 10, y: 350))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.closeSubpath()
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
