//
//  AddingView.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/08.
//

import SwiftUI

struct AddingView: View {
    @StateObject var postitStore: PostItStore
    @Binding var showingSheet: Bool
    
    @State private var memo: String = ""
    @State private var colorIndex: Int = 0
       
    let colors: [Color] = [.cyan, .purple, .blue, .yellow, .brown]
    var trimMemo: String {
        memo.trimmingCharacters(in: .whitespaces)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Select a color")) {
                    HStack {
                        ForEach(Array(colors.enumerated()), id: \.offset) { (index, color) in
                            Button {
                                print("hello")
                                colorIndex = index
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .frame(height: 60)
                                        .foregroundColor(color)
                                        .shadow(radius: 6)
                                    
                                    if index == colorIndex {
                                        Image(systemName: "checkmark")
                                            .font(.title)
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                    }
                    Text("Hello")
                }
                .padding()
                Divider()
                Section(header: Text("Write a memo")) {
                    TextField("Memo", text: $memo,axis: .vertical)
                }
                .padding()
                Spacer()
            }
            .navigationTitle("Add New Post")
            .formStyle(.columns)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showingSheet.toggle()
                    } label: {
                        Text("Cancel")
                    }
                }
                
                if trimMemo.count > 0 {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            let postIt: PostIt =  PostIt(
                                id: UUID().uuidString,
                                user: "jero",
                                memo: memo,
                                colorIndex: colorIndex,
                                createdAt: Date().timeIntervalSince1970)
                            postitStore.addPost(postIt)
                            showingSheet.toggle()
                        } label: {
                            Text("Submit")
                        }

                    }
                }
            }
        }
        
    }
}

struct AddingView_Previews: PreviewProvider {
    @State static var showingSheet: Bool = false
    static var previews: some View {
        AddingView(postitStore: PostItStore(), showingSheet: $showingSheet)
    }
}
