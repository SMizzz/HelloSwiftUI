//
//  ContentView.swift
//  TimerTutorial
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Button {
                    resetCount()
                } label: {
                    Text("Reset Counter")
                }
                
                NavigationLink(destination: SecondView()) {
                    Text("Next Screen")
                }
                .padding()
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TimerData())
    }
}
