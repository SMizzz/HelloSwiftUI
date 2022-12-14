import UIKit
import Foundation


struct CoronaClinicData: Codable {
    var currentCount: Int
    var data: [CenterData]
    var matchCount: Int
    var page: Int
    var perPage: Int
    var totalCount: Int
}

struct CenterData: Codable {
    var address: String
    var centerName: String
    var centerType: String
    var createdAt: String
    var facilityName: String
    var id: Int
    var lat: String
    var lng: String
    var org: String
    var phoneNumber: String
    var sido: String
    var sigungu: String
    var updatedAt: String
    var zipCode: String
}

let url = URL(string: "https://api.odcloud.kr/api/15077586/v1/centers?page=1&perPage=10&serviceKey=IqV8U3oL39Xq5A1gSbKYKHnRESAPgGu397bHbKxmiAlqiHoR1Zkf5yNLne8Xtc%2B9MEt8XKceRDvE%2F%2Bu4%2Fn6rbQ%3D%3D")!

// #1
/*
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    // data, response, error를 활용한 데이터 가져온 이후의 작업
    
    // data가 nil일 경우 옵셔널 바인딩에서 else 처리된다면 끝
    guard let data else {
        print("nothing")
        print("\(error?.localizedDescription)")
        return
    }
    
    // #2 방법
    /*
    guard let data = data else {
        print("Nothing")
        return
    }
    */
   
    // JsonDecoder()를 사용하여 Json -> Swift에서 사용할 수 있게 변환해준다.
    do {
        // JSON으로 받은 데이터를 [Car] 모양으로 해독해주는 작업을 해주었다.
        let resultsData =  try JSONDecoder().decode(CoronaClinicData.self, from: data)

        // 배열로 받은 데이터를 for문을 사용하여 풀어줌...
        for item in resultsData.data {
            print("id: \(item.centerName)")
            print("=========================================")
        }
    } catch let error {
        print(error)
        print(error.localizedDescription)
    }
}
task.resume()
*/

// #2
/*
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    // data, response, error를 활용한 데이터 가져온 이후의 작업
    
    // data가 nil일 경우 옵셔널 바인딩에서 else 처리된다면 끝
    guard let data else {
        print("nothing")
        print("\(error?.localizedDescription)")
        return
    }
    
    do {
        let results = try JSONDecoder().decode(CoronaClinicData.self, from: data)
        for item in results.data {
            print(item)
        }
    } catch {
        print(error.localizedDescription)
    }
}.resume()
*/

// #3
func loadJson<T: Decodable>(data: Data) -> T {
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse data: \(error)")
    }
}

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    guard let data else {
        print("data - not found")
        return
    }
    
    let dataToString = String(data: data, encoding: .utf8)!
    print("\(dataToString)")
    
    let centers: CoronaClinicData = loadJson(data: data)
    print("\(centers)")
    print("currentCount: \(centers.currentCount)")
    print("matchCount : \(centers.matchCount)")
    
    let centerList = centers.data
    
    for center in centerList {
        print("\(center.centerName)")
        print("\(center.sido)")
        print("\(center.address)")
        print("\(center.centerType)")
        print("------------------------")
    }
}

task.resume()
