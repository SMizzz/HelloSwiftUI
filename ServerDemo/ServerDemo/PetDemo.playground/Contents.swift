import UIKit
import Foundation

struct Results: Codable {
  var resultList : [ResultList]
  var totalCount : Int
  var message    : String
}

struct ResultList: Codable {
  var contentSeq : Int
  var areaName   : String
  var partName   : String
  var title      : String
  var address    : String
  var latitude   : String
  var longitude  : String
  var tel        : String
}

func getData() {
    guard let url = URL(string: "https://www.pettravel.kr/api/listArea.do?page=1&pageBlock=10&areaCode=AC01") else {
        return
    }
    
    // shared singleton 객체 하나로만 사용하겠다. 동시에 작업하지 않고, 순차적으로 작업하는 곳에 쓰인다.
    // url을 가지고 data를 가져오거든 후행 클로저에 있는 일을 실행하라.
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        // data, response, error를 활용한 데이터 가져온 이후의 작업
        
        // data가 nil일 경우 옵셔널 바인딩에서 else 처리된다면 끝
        guard let data else {
            print("nothing")
            print("\(error!.localizedDescription)")
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
            let resultsData =  try JSONDecoder().decode([Results].self, from: data)
            // 배열로 받은 데이터를 for문을 사용하여 풀어줌...
            for results in resultsData {
                print(results)
            }
        } catch let error {
            print(error)
            print(error.localizedDescription)
        }
    }
    task.resume()
}

getData()

/*
func loadJson<T: Decodable>(data: Data) -> T {
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse data: \(error)")
    }
}

let url = URL(string: "https://www.pettravel.kr/api/listArea.do?page=1&pageBlock=10&areaCode=AC01")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    // data, response, error을 활용한 데이터 가져온 이후의 작업
    
    // data가 nil로서 옵셔널 바인딩에서 else처리 된다면 끝
    guard let data else {
        print("nothing by error")
        return
    }
    
    var resultsData: [Results] = loadJson(data: data)

    for results in resultsData {
        for data in results.resultList {
            print(data.title)
        }
    }
}

task.resume()
*/
