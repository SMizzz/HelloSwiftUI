//
//  PostItMemoContentView.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/08.
//

import SwiftUI

struct PostItMemoContentView: View {
    @StateObject private var postitStore: PostItStore = PostItStore()
    @State private var showingAddingSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(postitStore.postits) { postit in
                    PostItView(postit: postit)
                        .contextMenu {
                            ShareLink(item: postit.textForSharing)
                            
                            Button {
                                postitStore.removePostIt(postit)
                            } label: {
                                Text("Remove")
                                Image(systemName: "trash")
                            }

                        }
                }
                .listRowSeparator(.hidden)
                
                if postitStore.postits.isEmpty {
                    Text("It's empty!")
                        .padding()
                } 
            }
            .listStyle(.plain)
            .navigationTitle("Post It")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddingSheet.toggle()
                    } label: {
                        Text("Add")
                    }
                }
            }
            .sheet(isPresented: $showingAddingSheet) {
                AddingView(postitStore: postitStore, showingSheet: $showingAddingSheet)
            }
            .onAppear {
                postitStore.startFetching()
            }
            .onDisappear {
                postitStore.stopFetching()
            }
        }
    }
}

struct PostItView: View {
    var postit: PostIt
    var body: some View {
        VStack(alignment: .leading) {
            Text(postit.memo)
                .padding()
            HStack {
                Text(postit.user)
                    .font(.footnote)
                    .padding()
                Spacer()
                Text(postit.createdDate)
                    .font(.footnote)
                    .padding()
            }
        }
        .background(postit.color)
        .shadow(radius: 5)
        .padding()
    }
}

struct PostItMemoContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostItMemoContentView()
    }
}
