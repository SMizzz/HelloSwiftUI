//
//  CoinSingingStore.swift
//  CoinSingingMapList
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI
import Combine

class CoinSingingStore: ObservableObject {
    @Published var coinSingingstore: [CoinSinging] = coinSingings
        
    func addCoinSingingStore(_ coinSing: CoinSinging) {
        coinSingingstore.append(coinSing)
    }
}
