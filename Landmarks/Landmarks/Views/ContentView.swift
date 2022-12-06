//
//  ContentView.swift
//  Landmarks
//
//  Created by Jero on 2022/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
