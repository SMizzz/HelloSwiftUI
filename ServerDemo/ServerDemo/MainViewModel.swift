//
//  MainViewModel.swift
//  ServerDemo
//
//  Created by Jero on 2022/11/22.
//

import Foundation
import Combine

class MainViewModel: ObservableObject {
    @Published var oceanData: [OceanInfo] = []
    
    init() {
        getData()
        print(oceanData)
    }
    
    func loadJson<T: Decodable>(data: Data) -> T {
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("Unable to parse data: \(error)")
        }
    }
    
    func getData() {
        let url = URL(string: "https://www.khoa.go.kr/api/oceangrid/preOcean/search.do?ServiceKey=wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==&type=KOREA&ResultType=json")!

        let task = URLSession.shared.dataTask(with: url) { [self] (data, response, error) in
            // data, response, error을 활용한 데이터 가져온 이후의 작업
            
            // data가 nil로서 옵셔널 바인딩에서 else처리 된다면 끝
            guard let data else {
                print("nothing by error")
                return
            }
            
            let resultsData: Result = self.loadJson(data: data)
            
            // #1
            oceanData = resultsData.result.data
            
            // #2
            /*
            for inform in resultsData.result.data {
                oceanData.append(inform)
            }
            */
        }
        task.resume()
    }
}
