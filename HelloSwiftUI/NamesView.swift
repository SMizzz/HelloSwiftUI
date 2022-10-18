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
            Text("👼🏻")
                .font(.largeTitle)
            Text("Ethan")
            HStack {
                VStack {
                    Text("🙍🏻")
                        .font(.largeTitle)
                    Text("Kyle")
                }
                .padding()
                
                VStack {
                    Text("🙍🏻")
                        .font(.largeTitle)
                    Text("Beom")
                }
                .padding()
                
                VStack {
                    Text("🙎🏻‍♀️")
                        .font(.largeTitle)
                    Text("Hyem")
                }
                .padding()
            }
            
            HStack {
                VStack {
                    Text("🙎🏻‍♀️")
                        .font(.largeTitle)
                    Text("Jasmin")
                }
                .padding()
                
                VStack {
                    Text("🙎🏻‍♀️")
                        .font(.largeTitle)
                    Text("Jero")
                        .foregroundColor(.purple)
                }
                .padding()
                
                VStack {
                    Text("🙍🏻")
                        .font(.largeTitle)
                    Text("Young")
                }
                .padding()
            }
        }
        .font(.title)
        .bold()
    }
}

struct NamesView_Previews: PreviewProvider {
    static var previews: some View {
        NamesView()
    }
}
