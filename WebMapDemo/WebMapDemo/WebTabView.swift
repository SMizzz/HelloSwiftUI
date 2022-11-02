//
//  WebTabView.swift
//  WebMapDemo
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct WebTabView: View {
    
    @State private var isShowingSheet = false
    
    var body: some View {
        VStack {
            Button {
                isShowingSheet.toggle()
            } label: {
                Text("Open Web Browser")
            }
            .sheet(
                isPresented: $isShowingSheet,
                onDismiss: didDismiss
            ) {
                /*
                Text("License Agreement")
                Text("""
                Terms and condistions go here
                """)
                .padding(50)
                Button("Dismiss", action: {isShowingSheet.toggle()})
                 */
                WebModalView()
            }
        }
    }
    
    func didDismiss() {
        
    }
}

struct WebModalView: View {
    var body: some View {
        SafariView(url: URL(string: "https://jero-ios.tistory.com/")!)
    }
}

struct WebTabView_Previews: PreviewProvider {
    static var previews: some View {
        WebTabView()
    }
}
