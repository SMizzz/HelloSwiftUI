//
//  fetchData.swift
//  ServerDemo
//
//  Created by Jero on 2022/11/22.
//

import Foundation


class WebService {
    func fetchData(url: String) async throws -> [CovidCenter]  {
//        let url = URL(string: "https://api.odcloud.kr/api/15077586/v1/centers?page=1&perPage=10&serviceKey=IqV8U3oL39Xq5A1gSbKYKHnRESAPgGu397bHbKxmiAlqiHoR1Zkf5yNLne8Xtc%2B9MEt8XKceRDvE%2F%2Bu4%2Fn6rbQ%3D%3D")!
        
        guard let url = URL(string: url) else { return [] }
        
        // 아래 코드가 다 완료되면 다음 코드를 실행해 async와 await 함께
        // try문을 작성해주면 에러가 발생할 수 있기 때문에 throws를 사용한다. async throws 이런 식으로..
        let (data, _) = try await URLSession.shared.data(from: url)
        
        // JSON을 Decoding
        let centers = try JSONDecoder().decode(CovidCenters.self, from: data)
        print("\(centers)")
        
        
        return centers.data
    }

}
