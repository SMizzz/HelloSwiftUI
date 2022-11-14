//
//  TestTwoView.swift
//  ContextMenuDemo
//
//  Created by Jero on 2022/10/28.
//

import SwiftUI

struct TestTwoView: View {
    @EnvironmentObject var memoData: MemoData
    @State var textToResult: String = ""
    
    var body: some View {
        VStack {
            TextEditor(text: $textToResult)
                .background(.blue)
            
            
            Button {
                memoData.addResultArr(textToResult)
                print(memoData.resultArr)
            } label: {
                Text("메모작성")
                ZStack {
                    Text("메모작성")
                    Rectangle()
                        .foregroundColor(Color("navyColor"))
                        .frame(width: 330, height: 60)
                        .cornerRadius(10)
                }
                
            }
           
//            Button(action: <#T##() -> Void#>, label: <#T##() -> _#>)
            
            Text("Save")
                .foregroundColor(Color("sailColor"))
            NavigationLink(destination: TestView()) {
                Text("결과화면 보러가기")
            }
      

        }
        .padding()
        
    }
}

struct TestTwoView_Previews: PreviewProvider {
    static var previews: some View {
        TestTwoView()
            .environmentObject(MemoData())
    }
}
