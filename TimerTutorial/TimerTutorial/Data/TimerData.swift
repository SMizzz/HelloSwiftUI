//
//  TimerData.swift
//  TimerTutorial
//
//  Created by Jero on 2022/10/24.
//

import Foundation
import Combine

class TimerData : ObservableObject {
    // 변경을 감지할 변수
    @Published var timeCount = 0
    
    var timer: Timer?
    
    func timerStart() {
        timer = Timer.scheduledTimer(
                  timeInterval: 1.0,
                  target: self,
                  selector: #selector(timerDidFire),
                  userInfo: nil,
                  repeats: true)
    }
    
    @objc func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
    
    func timerStop() {
        timer?.invalidate()
    }
}
