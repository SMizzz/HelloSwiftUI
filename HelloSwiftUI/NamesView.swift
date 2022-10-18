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
                .modifier(StandardTextShadowColor())
            HStack {
                VStack {
                    Text("🙍🏻")
                        .font(.largeTitle)
                    Text("Kyle")
                        .modifier(StandardTextShadowColor())
                }
                .padding()
                
                VStack {
                    Text("🙍🏻")
                        .font(.largeTitle)
                    Text("Beom")
                        .modifier(StandardTextShadowColor())
                }
                .padding()
                
                VStack {
                    Text("🙎🏻‍♀️")
                        .font(.largeTitle)
                    Text("Hyem")
                        .modifier(StandardTextShadowColor())
                }
                .padding()
            }
            
            HStack {
                VStack {
                    Text("🙎🏻‍♀️")
                        .font(.largeTitle)
                    Text("Jasmin")
                        .modifier(StandardTextShadowColor())
                }
                .padding()
                
                VStack {
                    Text("🙎🏻‍♀️")
                        .font(.largeTitle)
                    Text("Jero")
                        .modifier(StandardTextColor())
                        .modifier(StandardTextShadowColor())
                }
                .padding()
                
                VStack {
                    Text("🙍🏻")
                        .font(.largeTitle)
                    Text("Young")
                        .modifier(StandardTextShadowColor())
                }.padding()
            }
        }
        .modifier(StandardName())
    }
}

struct StandardName: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            // 커스텀 폰트 방법
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
