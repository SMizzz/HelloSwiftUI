//
//  NamesView.swift
//  HelloSwiftUI
//
//  Created by Jero on 2022/10/18.
//

import SwiftUI

struct NamesView: View {
    var body: some View {
        VStack {
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
    }
}

struct NamesView_Previews: PreviewProvider {
    static var previews: some View {
        NamesView()
    }
}
