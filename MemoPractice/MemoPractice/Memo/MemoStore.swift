//
//  MemoStore.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/07.
//

import SwiftUI
import FirebaseDatabase

class MemoStore: ObservableObject {
    @Published var memoData: [MemoInfo] = []
    let ref = Database.database().reference()
    
    private lazy var databasePath: DatabaseReference? = {
        let ref = Database.database().reference().child("memos")
        return ref
    }()
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    func listentoRealtimeDatabase() {
        guard let databasePath = databasePath else {
            return
        }
 
        databasePath
            .observe(.childAdded) { [weak self] snapshot, _ in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let memoData = try JSONSerialization.data(withJSONObject: json)
                    let memo = try self.decoder.decode(Memo.self, from: memoData)
                    self.memoData.append(
                        MemoInfo(id: (json["id"] as? String)!, memo: Memo(title: memo.title, content: memo.content)))
                } catch {
                    print("an error occurred", error)
                }
            }
    }
    
    func stopListening() {
        databasePath?.removeAllObservers()
    }
    
    func addMemo(memo: Memo) {
        self.databasePath?.childByAutoId().setValue([
            "title": memo.title,
            "content": memo.content
        ])
    }
    
    func editMemo(id: String, memo: Memo) {
        self.databasePath?.child(id).setValue([
            "title": memo.title,
            "content": memo.content
        ])
    }
}
