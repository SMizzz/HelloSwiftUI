//
//  DrawRectangle.swift
//  DrawDemo
//
//  Created by Jero on 2022/10/27.
//

import SwiftUI

struct DrawRectangle: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 70)
//                .offset(CGSize(width: 0, height: 5))
            
            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 90)
//                .offset(CGSize(width: 0, height: -5))
            
            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 110)
//                .offset(CGSize(width: 0, height: -15))
            
            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 130)
//                .offset(CGSize(width: 0, height: -25))
            
            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 150)
//                .offset(CGSize(width: 0, height: -35))
        }
//        .position(x: 50, y: 300)
        .offset(CGSize(width: 0, height: -5))
      
    }
}

struct DrawRectangle_Previews: PreviewProvider {
    static var previews: some View {
        DrawRectangle()
    }
}
