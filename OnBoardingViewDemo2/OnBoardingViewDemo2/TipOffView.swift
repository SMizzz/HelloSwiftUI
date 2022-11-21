//
//  TipOffView.swift
//  OnBoardingViewDemo2
//
//  Created by Jero on 2022/11/16.
//

import SwiftUI

struct TipOffView: View {
    var body: some View {
        VStack {
         
            Image("Screen6_TipOff")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
            
            VStack(spacing: 10) {
                Text("알려주고 싶은")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .font(.title2)
                    .bold()
                
                HStack(spacing: 0) {
                    Text("TMI")
                        .foregroundColor(.black)
                        .background(.white)
                        .font(.title2)
                        .bold()
                    Text("가 있다면 제보해주세요.")
                        .foregroundColor(.gray)
                        .font(.title2)
                        .bold()
                }
            }
            
           
            Button {
                
            } label: {
                Text("시작하기")
                    .padding()
                    .frame(width: 300)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(20)
            }

        }
        
    }
}

struct TipOffView_Previews: PreviewProvider {
    static var previews: some View {
        TipOffView()
    }
}
