//
//  ResultData.swift
//  GestureDemo2
//
//  Created by Jero on 2022/11/01.
//

import Foundation
import Combine

class ResultData: ObservableObject {
    @Published var resultArr: [Int] = []
    
    init() {
        resultArr.append(0)
    }
    
    func addResultArr(_ num: Int) {
        resultArr.append(num)
    }
}
