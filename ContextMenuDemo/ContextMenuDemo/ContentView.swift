//
//  ContentView.swift
//  ContextMenuDemo
//
//  Created by Jero on 2022/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var foregroundColor: Color = .white
    @State private var backgroundColor: Color = .purple
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .padding()
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .contextMenu {
                    Button {
                        self.foregroundColor = .black
                        self.backgroundColor = .white
                    } label: {
                        Text("Normal Colors")
                        Image(systemName: "paintbrush")
                    }
                    Button {
                        self.foregroundColor = .white
                        self.backgroundColor = .purple
                    } label: {
                        Text("Purple Colors")
                        Image(systemName: "paintbrush.fill")
                    }
                    
                    
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
