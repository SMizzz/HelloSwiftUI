//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jero on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: "crown.fill")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("No.1")
                .font(.largeTitle)
                .padding()
            Text("Kyle")
                .font(.headline)
            Text("Beom")
                .font(.headline)
            Text("Hyem")
                .font(.headline)
            Text("Jasmin")
                .font(.headline)
            Text("Jero")
                .font(.headline)
                .foregroundColor(Color(CGColor(red: 115/255, green: 85/255, blue: 255/255, alpha: 1)))
            Text("Young")
                .font(.headline)
            Text("Ethan")
                .font(.headline)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
                .previewDisplayName("iPhone 14 Pro")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
                .preferredColorScheme(.dark)
        }
    }
}
