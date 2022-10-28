//
//  TestView.swift
//  ContextMenuDemo
//
//  Created by Jero on 2022/10/28.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject var memoData: MemoData
    
    var body: some View {
        
        VStack {
//            Button(action: {
//               self.clickCheck.toggle()
//            }) {
//                Image(systemName: self.clickCheck == true ? "star.fill" : "star")
//                    .foregroundColor(self.clickCheck == true ? .yellow : .gray)
//            }
            
            Text("memoData \(memoData.resultArr[0])")
            
        }
        
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
            .environmentObject(MemoData())
    }
}
