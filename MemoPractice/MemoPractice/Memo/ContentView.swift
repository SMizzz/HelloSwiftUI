//
//  ContentView.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/07.
//

import SwiftUI

struct ContentView: View {
    @StateObject var memoStore: MemoStore = MemoStore()
    @State private var isOnEdit: Bool = false
//    @State var index: Int = 0
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                List {
                    ForEach(0 ..< memoStore.memoData.count, id: \.self) { index in
                        
                        NavigationLink {
//                            EditMemoView(isOnEdit: $isOnEdit, title: memoStore.memoData[index].memo.title, content: memoStore.memoData[index].memo.content, index: index )
                        } label: {
                            VStack(alignment: .leading) {
                                Text(memoStore.memoData[index].memo.title)
                                    .font(.title3)
                                Text(memoStore.memoData[index].memo.content)
                                    .font(.subheadline)
                            }
                            
                            .foregroundColor(.black)
                        }
                    }
                }
            }
            .navigationBarItems(trailing:
                                    NavigationLink(destination: AddNewMemoView(), label: {
                Image(systemName: "plus")
                    .font(.title3)
                    .bold()
            }))
            .onAppear {
                memoStore.memoData = []
                memoStore.listentoRealtimeDatabase()
            }
            .onDisappear {
                memoStore.stopListening()
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
