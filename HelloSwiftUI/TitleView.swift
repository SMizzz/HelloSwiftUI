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
                .resizable()
                .frame(width: 60, height: 50)
                .foregroundColor(.purple)
            Text("Hello No.1")
                .font(.largeTitle)
                .bold()
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
