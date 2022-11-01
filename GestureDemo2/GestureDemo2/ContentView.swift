//
//  ContentView.swift
//  GestureDemo2
//
//  Created by Jero on 2022/11/01.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var timerData: TimerData = TimerData()
    @GestureState private var offset: CGSize = .zero
    @EnvironmentObject var resultData: ResultData
        
    @State private var pressEnabled: Bool = false
    @State private var size: Int = 10
    
    var body: some View {
        
        let leftDragGesture = DragGesture()
            .updating($offset, body: { value, state, transaction in
                state = value.translation
                    
            })
            .onEnded { value in
                if value.translation.width < 0 {
                    timerData.timeCount -= 3
                } else {
                    timerData.timeCount += 3
                }
            }

        let longPressGesture = LongPressGesture(minimumDuration: 1)
            .onEnded { _ in
                if pressEnabled {
                    timerData.timerStop()
                    pressEnabled = false
                } else {
                    pressEnabled = true
                    timerData.timerStart()
                }
                print("Timer started")
            }

       return VStack {
           Text("\(timerData.timeCount)")
                .font(.largeTitle)
                .offset(offset)
                .gesture(leftDragGesture)
                .gesture(longPressGesture)
           
           Image(systemName: "star.fill")
               .resizable()
               .frame(width: CGFloat((timerData.timeCount < 90) ? timerData.timeCount : 90), height: CGFloat((timerData.timeCount < 90) ? timerData.timeCount : 90))
               .gesture(leftDragGesture)
               .gesture(longPressGesture)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TimerData())
    }
}
