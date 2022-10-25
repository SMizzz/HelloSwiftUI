//
//  SecondView.swift
//  TimerTutorial
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI


struct SecondView: View {
    @EnvironmentObject var timerData: TimerData
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(TimerData())
    }
}
