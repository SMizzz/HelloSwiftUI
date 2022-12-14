//
//  NamesView.swift
//  HelloSwiftUI
//
//  Created by Jero on 2022/10/18.
//

import SwiftUI

struct NamesView: View {
    var body: some View {
        MyVStack {
            Text("πΌπ»")
                .font(.largeTitle)
            Text("Ethan")
                .modifier(StandardTextShadowColor())
            MyHStack {
                MyVStack {
                    Text("ππ»ββοΈ")
                        .font(.largeTitle)
                    Text("Jero")
                        .modifier(StandardTextColor())
                        .modifier(StandardTextShadowColor())
                }
                MyVStack {
                    Text("ππ»")
                        .font(.largeTitle)
                    Text("Kyle")
                        .modifier(StandardTextShadowColor())
                }
            }
            
            MyHStack {
                MyVStack {
                    Text("ππ»")
                        .font(.largeTitle)
                    Text("Beom")
                        .modifier(StandardTextShadowColor())
                }
                MyVStack {
                    Text("ππ»ββοΈ")
                        .font(.largeTitle)
                    Text("Jasmin")
                        .modifier(StandardTextShadowColor())
                }
            }
            
            MyHStack {
                MyVStack {
                    Text("ππ»ββοΈ")
                        .font(.largeTitle)
                    Text("Hyem")
                        .modifier(StandardTextShadowColor())
                }
                MyVStack {
                    Text("ππ»")
                        .font(.largeTitle)
                    Text("Young")
                        .modifier(StandardTextShadowColor())
                }
            }
            
        }.modifier(StandardName())
    }
        
}

struct StandardName: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
        // μ»€μ€ν ν°νΈ λ°©λ²
        //        .font(.custom("", size: .title))
            .bold()
    }
}

struct StandardTextColor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(CGColor(red: 115/255, green: 85/255, blue: 255/255, alpha: 1)))
    }
}

struct StandardTextShadowColor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: .yellow, radius: 15, x: 5 , y: 5)
    }
}

struct NamesView_Previews: PreviewProvider {
    static var previews: some View {
        NamesView()
    }
}
