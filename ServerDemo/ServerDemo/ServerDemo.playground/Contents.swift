import UIKit
import Foundation

// Playground 앱에서 작업할 때에는 다음의 코드가 필요하다.
//import PlaygroundSupport
//PlaygroundPage.current.needsIndefiniteExecution = true

// 1. carData.json 파일을 mocki.io에 올린다.
// 2. URLSession으로 데이터를 가져와 바로 출력이 가능한지 살펴본다.
// 3. 차 이름들만 출력되도록 만들어본다.
// 4. 데이터들을 더 활용해서 차 이름과 설명, 하이브리드 여부를 print로 출력하도록 한다.

struct Car : Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}

// MZ
/*
func getData () {
    guard let url = URL(string: "https://mocki.io/v1/f6599d18-decb-4704-9179-0057e837496c") else {
        return
    }
    
    // singleton 객체 하나로만 사용하겠다.?
    // url을 가지고 data를 가져오거든 후행 클로저에 있는 일을 실행하라.
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
        
        // 그저 UTF-8로 변환한 String Data를 보기 위한 코드
        let showingData = String(data: data, encoding: .utf8)!
        print("\(showingData)")
        
        
        // JsonDecoder()를 사용하여 Json -> Swift에서 사용할 수 있게 변환해준다.
        do {
            // JSON으로 받은 데이터를 [Car] 모양으로 해독해주는 작업을 해주었다.
            let resultsData =  try JSONDecoder().decode([Car].self, from: data)

            // 배열로 받은 데이터를 for문을 사용하여 풀어줌...
            for data in resultsData {
                print("id: \(data.id)")
                print("isHybird: \(data.isHybrid)")
                print("description: \(data.description)")
                print("=========================================")
            }
        } catch let error {
            print(error)
            print(error.localizedDescription)
        }
    }
    task.resume()
}

getData()
*/

// Ned Park
func loadJson<T: Decodable>(data: Data) -> T {
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse data: \(error)")
    }
}

let url = URL(string: "https://mocki.io/v1/c21cbc0e-9877-4cd3-9f00-2d5b909caa10")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    // data, response, error을 활용한 데이터 가져온 이후의 작업
    
    // data가 nil로서 옵셔널 바인딩에서 else처리 된다면 끝
    guard let data else {
        print("nothing by error")
        return
    }
    
    var carData: [Car] = loadJson(data: data)

    for car in carData {
        print("\(car.name)")
        print("\(car.description)")
        if car.isHybrid {
            print("It's Hybrid!")
        }
        print("-----------------")
    }
}

task.resume()
