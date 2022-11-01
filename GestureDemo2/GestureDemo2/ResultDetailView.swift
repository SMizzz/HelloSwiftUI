//
//  ResultDetailView.swift
//  GestureDemo2
//
//  Created by Jero on 2022/11/01.
//

import SwiftUI

struct ResultDetailView: View {
    @EnvironmentObject var resultData: ResultData
    
    var body: some View {
        VStack {
            ForEach( 0 ..< resultData.resultArr.count, id: \.self) { index in
                Text("\(resultData.resultArr[index])")
            }
        }
    }
}

struct ResultDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResultDetailView()
            .environmentObject(TimerData())
    }
}
