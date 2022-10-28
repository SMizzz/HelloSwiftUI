//
//  DrawStarView.swift
//  DrawDemo
//
//  Created by Jero on 2022/10/27.
//

import SwiftUI

struct DrawStarView: View {
    var body: some View {
        VStack {
            HStack {
                StarShape()
                    .fill(.yellow)
                    .frame(width: 50, height: 50)
                    .offset(CGSize(width: -200, height: -150))
            }
           
        }
    }
}


struct StarShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 10, y: 50))
        path.addLine(to: CGPoint(x: 100, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 100))
     
        path.addLine(to: CGPoint(x: 400, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 500))
        path.addLine(to: CGPoint(x: 0, y: 300))
        
        path.addLine(to: CGPoint(x: 400, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 500))
        path.addLine(to: CGPoint(x: 0, y: 520))
        
        path.addLine(to: CGPoint(x: 200, y: 400))
        path.addLine(to: CGPoint(x: 450, y: 550))
        
        path.closeSubpath()
        return path
    }
}

struct DrawStarView_Previews: PreviewProvider {
    static var previews: some View {
        DrawStarView()
    }
}
