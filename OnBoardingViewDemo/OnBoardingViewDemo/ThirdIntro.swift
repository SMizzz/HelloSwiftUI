//
//  ThirdIntro.swift
//  OnBoardingViewDemo
//
//  Created by Jero on 2022/11/16.
//

import SwiftUI

struct ThirdIntro: View {
    
    @State private var startAnimation: Bool = false
    
    var body: some View {
        VStack {
            Text("새끼발가락을 움직일 수 있는 건 유전이다.")
                .padding(20)
                .font(.title3)
                .fontWeight(.thin)
                .frame(width: 330, height: 250)
                .background(.white)
                .cornerRadius(20)
                .shadow(color:.gray .opacity(0.3),radius: 5)
                .overlay {
                    Image(systemName: "hand.tap.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .foregroundStyle(.gray)
                        .offset(CGSize(width: 20, height: 100))
                    
                }
              
               
                
        }
        
      
    }
}

struct ThirdIntro_Previews: PreviewProvider {
    static var previews: some View {
        ThirdIntro()
    }
}
