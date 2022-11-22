import UIKit
import Foundation

struct Result: Codable {
    var result : OceanData
}

struct OceanData: Codable {
  var data : [OceanInfo]
}

struct OceanInfo: Codable {
    var name: String
    var type: String
    var fileName: String
    var hour: String
    var day: String
    var filePath: String
}

func loadJson<T: Decodable>(data: Data) -> T {
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse data: \(error)")
    }
}

let url = URL(string: "http://www.khoa.go.kr/api/oceangrid/preOcean/search.do?ServiceKey=wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==&type=KOREA&ResultType=json")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    // data, response, error을 활용한 데이터 가져온 이후의 작업
    
    // data가 nil로서 옵셔널 바인딩에서 else처리 된다면 끝
    guard let data else {
        print("nothing by error")
        return
    }
    
    var resultsData: Result = loadJson(data: data)
    
    for inform in resultsData.result.data {
        print(inform.filePath)
    }
}

task.resume()
