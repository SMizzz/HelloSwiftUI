//
//  AddNewMemoView.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/07.
//

import SwiftUI

struct AddNewMemoView: View {
    @StateObject var memoStore: MemoStore = MemoStore()
    @State var title: String = ""
    @State var content: String = ""
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            TextField("타이틀 입력", text: $title)
                .padding()
                .border(.black, width: 1)
            TextEditor(text: $content)
                .frame(height: 300)
                .border(.black, width: 1)
            Spacer()
        }
        .navigationBarItems(trailing:
                                Button(action: {
            memoStore.addMemo(memo: Memo(title: title, content: content))
            self.mode.wrappedValue.dismiss()
        }, label: {
            Text("작성완료")
        }))
        .padding()
    }
}

struct AddNewMemoView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewMemoView()
    }
}
