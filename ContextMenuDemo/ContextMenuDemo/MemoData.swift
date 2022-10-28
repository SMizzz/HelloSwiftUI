//
//  MemoData.swift
//  ContextMenuDemo
//
//  Created by Jero on 2022/10/28.
//

import Foundation

class MemoData: ObservableObject {
    @Published var resultArr: [String] = []
    
    func addResultArr(_ result: String) {
        resultArr.append(result)
    }
}
