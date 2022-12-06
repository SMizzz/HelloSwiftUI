//
//  CarStore.swift
//  ListNavDemo
//
//  Created by Neil Smyth on 10/15/19.
//  Copyright © 2019 eBookFrenzy. All rights reserved.
//

import Foundation
import FirebaseDatabase

class CarStore : ObservableObject {
 
    
    @Published var cars: [Car] = []
    @Published var carInfo: [CarInfo] = []
    let ref = Database.database().reference()
    
    private lazy var databasePath: DatabaseReference? = {
        let ref = Database.database().reference().child("cars")
        return ref
    }()
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    func listentoRealtimeDatabase() {
        guard let databasePath = databasePath else {
            return
        }
        databasePath
            .observe(.childAdded) { [weak self] snapshot, _  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
//                print("is \(json["id"]!)")
                do {
                    let carData = try JSONSerialization.data(withJSONObject: json)
                    let car = try self.decoder.decode(Car.self, from: carData)
                    self.cars.append(car)
                    self.carInfo.append(CarInfo(Id: json["id"] as! String, cars: car))
                    print(self.carInfo)
                } catch {
                    print("an error occurred", error)
                }
            }
    }
    
    func stopListening() {
        databasePath?.removeAllObservers()
    }
    
    func addNewCar(car: Car) {
        ref.child("cars").childByAutoId().setValue([
            "id": car.id,
            "name": car.name,
            "description": car.description,
            "imageName": car.imageName,
            "isHybrid": car.isHybrid,
        ])
    }
    
    func deleteCar(key: String) {
        // 아래 방법 중 한 가지 택1
        // #1 child 연속으로 넣어줘서 path 추가하기
        ref.child("cars").child(key).removeValue()
        // #2 path 추가해서 하나로 코드 구현하기
        ref.child("cars/\(key)").removeValue()
    }
}

