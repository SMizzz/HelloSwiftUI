//
//  ContentView.swift
//  DemoState
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiEnable = true
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Toggle(isOn: $wifiEnable) {
                Text("Enable Wi-Fi")
            }
            TextField("Enter user name", text: $userName)
            Text(userName)
                               
            WifiImageView(wifiEnable: $wifiEnable)
        }
        .padding()
    }
}

struct WifiImageView: View {
    @Binding var wifiEnable: Bool
    
    var body: some View {
        VStack {
            /* if - else 문으로 Toggle 값 표현하기
             if wifiEnable {
             Image(systemName: "wifi")
             } else {
             Image(systemName: "wifi.slash")
             }
             */
            Image(systemName: wifiEnable ? "wifi" : "wifi.slash")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
