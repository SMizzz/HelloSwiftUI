//
//  ResultDressUpView.swift
//  RoulletteDressUpGame
//
//  Created by Jero on 2022/10/25.
//

import SwiftUI

struct ResultDressUpView: View {
    @ObservedObject var resultData: DressUpData = DressUpData()
    var body: some View {
        VStack {
            
            ForEach(0 ..< resultData.resultInform.count, id: \.self) { num in
                
                let gameNames = resultData.resultInform[num].gameName
                let test1 = resultData.resultInform[num].dressImageName
                let test2 = resultData.resultInform[num].girlImageName
                
                let test3 = resultData.informImageName[num].dressImageName
                let test4 = resultData.informImageName[num].girlImageName
                
                HStack {
                    VStack() {
                        Image(test4)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120)
                        Image(test3)
                            .resizable()
                            .offset(y: -120)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                    }
                    Text("\(gameNames) 결과는 \(test1)를 입은  \(test2)입니다.")
                        .padding()
                        .padding()
                        .lineLimit(3)
                }
                .padding()
            }
            
            
        }
    }
}

struct ResultDressUpView_Previews: PreviewProvider {
    static var previews: some View {
        ResultDressUpView()
    }
}
