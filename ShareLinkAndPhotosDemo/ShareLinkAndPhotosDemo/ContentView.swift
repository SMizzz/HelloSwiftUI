//
//  ContentView.swift
//  ShareLinkAndPhotosDemo
//
//  Created by Jero on 2022/11/16.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    NavigationLink {
                        ShareLinkView()
                    } label: {
                        Label("ShareLink Demo", image: "square.and.arrow.up")
                    }
                    
                    NavigationLink {
                        PhotosUIView()
                    } label: {
                        Label("PhotosUI Demo", image: "photo")
                    }
                }
                .navigationTitle("SwiftUI 4.0")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
