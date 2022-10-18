//
//  TitleView.swift
//  HelloSwiftUI
//
//  Created by Jero on 2022/10/18.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            Image(systemName: "crown.fill")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("Hello No.1")
                .font(.largeTitle)
                .underline()
                .padding()
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
