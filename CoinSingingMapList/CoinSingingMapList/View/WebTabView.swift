//
//  ContentView.swift
//  CoinSingingMapList
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct WebTabView: View {

    @ObservedObject var coinSingData: CoinSingingStore = CoinSingingStore()
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(coinSingData.coinSingingstore, id: \.self) { item in
                        NavigationLink(destination: MapView(url: item.url)) {
                            Text(item.name)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct MapView: View {
    
    @State private var isShowingSheet = false
    var url: String
    
    var body: some View {
        VStack {
            SafariView(url: URL(string: url)!)
//            Button {
//                isShowingSheet.toggle()
//            } label: {
//                Text("Open Web Browser")
//            }
//            .sheet(
//                isPresented: $isShowingSheet
//            ) {
//                /*
//                Text("License Agreement")
//                Text("""
//                Terms and condistions go here
//                """)
//                .padding(50)
//                Button("Dismiss", action: {isShowingSheet.toggle()})
//                 */
//                SafariView(url: URL(string: url)!)
//            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WebTabView()
    }
}
