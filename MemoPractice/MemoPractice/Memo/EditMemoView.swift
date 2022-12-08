//
//  EditMemoView.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/08.
//

import SwiftUI

struct EditMemoView: View {
    @Binding var memoStore: MemoStore
    @Binding var isOnEdit: Bool
    @State var title: String
    @State var content: String
    @State var index: Int
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Text("")
            HStack {
                Spacer()
                Button {
                    isOnEdit.toggle()
                    memoStore.editMemo(id: memoStore.memoData[index].id, memo: Memo(title: title, content: content))
//                    self.mode.wrappedValue.dismiss()
                } label: {
                    Text("수정확인")
                }
            }
            
            TextField("타이틀 입력", text: $title)
                .padding()
                .border(.black, width: 1)
            TextEditor(text: $content)
                .frame(height: 300)
                .border(.black, width: 1)
            Spacer()
            Text(memoStore.memoData[index].memo.content)
        }
        .padding()
    }
}

//struct EditMemoView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditMemoView()
//    }
//}
