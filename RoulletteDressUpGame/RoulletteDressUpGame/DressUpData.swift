//
//  DressUpData.swift
//  RoulletteDressUpGame
//
//  Created by Jero on 2022/10/25.
//

import Foundation
import Combine

struct ResultInform {
//    let girlsIndex: Int
//    let dressIndex: Int
    let gameName: String
    let dressImageName: String
    let girlImageName: String
}

struct InformImageName {
    let dressImageName: String
    let girlImageName: String
}

class DressUpData: ObservableObject {
    @Published var resultInform: [ResultInform] = []
    @Published var informImageName: [InformImageName] = []
    @Published var resultSentence: [String] = []
    
    init() {
        resultSentence.append("Test")
    }
    
    func arrayResultGirlDressLast() -> String {
        return resultSentence.last ?? ""
    }
    
    func addResultSentence(_ result: String) {
        resultSentence.append(result)
        print(resultSentence)
    }
    
    func addResultGirlSentence(
//        _ girlsIndex: Int,
//        _ dressIndex: Int,
        _ gameName: String,
        _ dressName: String,
        _ girlsName: String) {
            resultInform.append(
            ResultInform(
//                girlsIndex: girlsIndex,
//                dressIndex: dressIndex,
                gameName: gameName,
                dressImageName: dressName,
                girlImageName: girlsName))
    }
    
    func addInformImageNameArray(
        _ dressImageName: String,
        _ girlsImageName: String) {
            informImageName.append(
                InformImageName(
                    dressImageName: dressImageName,
                    girlImageName: girlsImageName))
    }
}
