//
//  PostItStore.swift
//  MemoPractice
//
//  Created by Jero on 2022/12/08.
//

import Foundation
import FirebaseDatabase

class PostItStore: ObservableObject {
    @Published var postits: [PostIt] = []
    
    private var databaseReference: DatabaseReference? = {
        let reference = Database.database().reference().child("postits")
        return reference
    }()
    
    private let enconder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    init() {
        /*
         postits = [
         PostIt(
         id: UUID().uuidString,
         user: "mizy",
         memo: "Good morning",
         colorIndex: 0,
         createdAt: Date().timeIntervalSince1970),
         PostIt(
         id: UUID().uuidString,
         user: "jambo",
         memo: "Good night",
         colorIndex: 2,
         createdAt: Date().timeIntervalSince1970),
         ]
         */
        postits = []
    }
    
    func startFetching() {
        guard let databaseReference else { return }
        databaseReference
            .observe(.childAdded) { [weak self] snapshot in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                
                json["id"] = snapshot.key
                
                do {
                    let postitData = try JSONSerialization.data(withJSONObject: json)
                    let postit = try self.decoder.decode(PostIt.self, from: postitData)
                    print(postit)
                    self.postits.insert(postit, at: 0)
                } catch {
                    print("an error occurred", error)
                }
            }
        
        databaseReference
            .observe(.childChanged) { [weak self] snapshot in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                
                json["id"] = snapshot.key
                
                do {
                    let postitData = try JSONSerialization.data(withJSONObject: json)
                    let postit = try self.decoder.decode(PostIt.self, from: postitData)
                    print(postit)
                    
                    var index = 0
                    for postitItem in self.postits {
                        if (postit.id == postitItem.id) {
                            print(postitItem.id)
                            self.postits.remove(at: index)
                        }
                        index += 1
                    }
                    
                    self.postits.insert(postit, at: 0)
                } catch {
                    print("an error occurred", error)
                }
            }
        
        databaseReference
            .observe(.childRemoved) { [weak self] snapshot in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                
                json["id"] = snapshot.key
                
                do {
                    let postitData = try JSONSerialization.data(withJSONObject: json)
                    let postit = try self.decoder.decode(PostIt.self, from: postitData)
                    print(postit)
                    
                    var index = 0
                    for postitItem in self.postits {
                        if (postit.id == postitItem.id) {
                            print(postitItem.id)
                            self.postits.remove(at: index)
                        }
                        index += 1
                    }
                } catch {
                    print("an error occurred", error)
                }
            }
    }
    
    func stopFetching() {
        databaseReference?.removeAllObservers()
    }
    
    func addPost(_ postIt: PostIt) {
        databaseReference?.childByAutoId().setValue([
            "id": postIt.id,
            "user": postIt.user,
            "memo": postIt.memo,
            "colorIndex": postIt.colorIndex,
            "createdAt": postIt.createdAt
        ])
    }
    
    func removePostIt(_ postIt: PostIt) {
        databaseReference?.child(postIt.id).removeValue()
    }
}
