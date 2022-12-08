//
//  Memo.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/07.
//

import Foundation

struct MemoInfo: Codable, Identifiable {
    var id: String
    var memo: Memo
}

struct Memo: Codable {
    var title: String
    var content: String
}
